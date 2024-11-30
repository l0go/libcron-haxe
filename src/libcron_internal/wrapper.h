#include <functional>
#include <string>
#include <libcron/Cron.h>

class Wrapper {       // The class
  public:
	  static bool add_schedule_wrapper(libcron::Cron<libcron::LocalClock, libcron::NullLock>& cron, std::string name, std::string expression, std::function<void()> work) {
		  	cron.add_schedule(name, expression, [=](auto&) {
				work();
			});
			return true;
	  }
};
