#pragma once

#include "cinder/gl/wrapper.h"
#include "runtime/Virtual.h"
#include "runtime/ClassWatcher.h"

class Clear2 {
public:
	Clear2();

	rt_virtual void clear();

	RT_WATCH_HEADER
};