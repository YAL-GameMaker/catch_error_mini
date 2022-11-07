/// @author YellowAfterlife

#include "stdafx.h"
#include "winapi_hooking.h"
#include "tiny_string.h"

typedef INT_PTR(*YYDLGPROC)(HWND, UINT, WPARAM, LPARAM);

bool catch_error_proc;
bool catch_error_is_fatal;
tiny_wstring catch_error_path;
tiny_string catch_error_text;
HWND catch_error_dummy;
void init() {
	catch_error_proc = false;
	catch_error_path.init(L"");
	catch_error_text.init("");
	catch_error_dummy = CreateWindowExW(WS_EX_LEFT, L"Message", L"Message", 0, 0, 0, 0, 0, HWND_MESSAGE, 0, 0, 0);
}

dllx double catch_error_is_available() {
	return 1;
}

WinFuncHook(INT_PTR, DialogBoxParamW, HINSTANCE inst, LPCWSTR tpl, HWND parent, DLGPROC proc, LPARAM param) {
	if (lstrcmpW(tpl, L"IDD_ERROR_CODE") != 0) return DialogBoxParamW_base(inst, tpl, parent, proc, param);

	catch_error_text = "";
	catch_error_proc = true;
	auto result = DialogBoxParamW_base(inst, tpl, parent, proc, param);
	catch_error_proc = false;

	if (result == 1 && !catch_error_text.empty() && !catch_error_path.empty()) {
		auto file = CreateFile(catch_error_path.c_str(),
			GENERIC_WRITE, FILE_SHARE_WRITE, NULL, CREATE_ALWAYS,
			FILE_ATTRIBUTE_NORMAL, NULL);
		if (file != INVALID_HANDLE_VALUE) {
			DWORD done;
			WriteFile(file, catch_error_text.c_str(), (DWORD)catch_error_text.size(), &done, NULL);
			CloseHandle(file);
		}
	}

	return result;
}
WinFuncHook(BOOL, SetDlgItemTextW, HWND hDlg, int nIDDlgItem, LPCWSTR lpString) {
	if (catch_error_proc) {
		// store the error message string
		if (nIDDlgItem == 1001) catch_error_text.conv(lpString);
	}
	return SetDlgItemTextW_base(hDlg, nIDDlgItem, lpString);
}

dllx void catch_error_preinit_raw(const char* _path) {
	catch_error_path.conv(_path);
	WinFuncHookSet("User32.dll", DialogBoxParamW);
	WinFuncHookSet("User32.dll", SetDlgItemTextW);
}

BOOL APIENTRY DllMain(HMODULE hModule, DWORD  ul_reason_for_call, LPVOID lpReserved) {
	if (ul_reason_for_call == DLL_PROCESS_ATTACH) init();
	return TRUE;
}
