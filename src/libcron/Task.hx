package libcron;

@:buildXml('<include name="${haxelib:libcron}/Build.xml" />')
@:include('libcron/Task.h')
@:native('libcron::TaskInformation')
extern class TaskInformation {}

@:buildXml('<include name="${haxelib:libcron}/Build.xml" />')
@:include('libcron/Task.h')
@:native('libcron::Task')
extern class Task {}
