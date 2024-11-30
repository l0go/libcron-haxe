package libcron;

@:buildXml('<include name="${haxelib:libcron}/Build.xml" />')
@:include('libcron/Cron.h')
@:native('libcron::Cron<libcron::LocalClock, libcron::NullLock>')
@:structAccess
extern class CronNative {
	public function new() {}

	@:native("remove_schedule")
	public function removeSchedule(name: cpp.StdString): Void;

	@:native("tick")
	public function tick(): cpp.Int16;
}
