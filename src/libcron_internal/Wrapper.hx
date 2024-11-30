package libcron_internal;

@:buildXml('<include name="${haxelib:libcron}/Build.xml" />')
@:include('wrapper.h')
@:include('libcron/Cron.h')
@:native('Wrapper')
@:structAccess
extern class Wrapper {
	@:native('Wrapper::add_schedule_wrapper')
	public static function addScheduleInternal(cron: libcron.CronNative, name: cpp.StdString, schedule: cpp.StdString, work: cpp.Callable<Void -> Void>): Bool;
}
