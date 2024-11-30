package libcron;

class Scheduler {
	final cron = new CronNative();

	public function new() {}

	public function addSchedule(name: cpp.StdString, schedule: cpp.StdString, work: cpp.Callable<Void -> Void>): Bool {
		return libcron_internal.Wrapper.addScheduleInternal(cron, name, schedule, work);
	}

	public function removeSchedule(name: cpp.StdString): Void {
		cron.removeSchedule(name);
	}

	public function tick(): cpp.Int16 {
		return cron.tick();
	}
}
