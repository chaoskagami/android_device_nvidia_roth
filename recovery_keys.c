/*
 * Copyright (C) 2009 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#include <linux/input.h>

#include "recovery_ui.h"
#include "common.h"
#include "extendedcommands.h"

#define BUTTON_A 304
#define BUTTON_B 305
#define BUTTON_X 307
#define BUTTON_Y 308

#define BUTTON_L1 310
#define BUTTON_R1 311

#define BUTTON_VOL 314
#define BUTTON_FWD 315
#define BUTTON_HOME 102
#define BUTTON_BACK 158
#define BUTTON_CENTER 116

#define BUTTON_THUMBL 317
#define BUTTON_THUMBR 318

int device_toggle_display(volatile char* key_pressed, int key_code) {
	return 0;
}

int device_handle_key(int key_code, int visible) {
	if (visible) {
		switch (key_code) {
			case BUTTON_HOME:
			case BUTTON_X:
				return HIGHLIGHT_DOWN;
			case BUTTON_FWD:
			case BUTTON_Y:
				return HIGHLIGHT_UP;
			case BUTTON_CENTER:
			case BUTTON_A:
				return SELECT_ITEM;
			case BUTTON_B:
			case BUTTON_BACK:
				return GO_BACK;
		}
	}

	return NO_ACTION;
}

