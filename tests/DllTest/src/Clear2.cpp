#include "Clear2.h"

Clear2::Clear2() {}

	void Clear2::clear()
	{
		ci::gl::clear( ci::ColorA( 1, 1, 1, 1 ) );
	}

	RT_WATCH_IMPL( Clear2 );
