require 'teststrap'
require 'ostruct'

context "Options" do
  context "Parser" do
    context "Main" do
      setup { SixGet::Options }

      asserts("Default Params") { topic.parse([]) }.raises SystemExit

      asserts("version") { topic.parse(["--version"]) }.raises SystemExit #.equals 0
      asserts("help") { topic.parse(["--help"]) }.raises SystemExit #.equals 0
      #asserts("no-verbose") { topic.parse([]).options.verbose? }.equals false
      asserts("verbose") { topic.parse(["-v"]) }.raises SystemExit

      context "Specific params" do
        asserts("install") { mock(SixGet::Mod).install(Dir.pwd, nil, nil, nil); topic.parse(["install"]) }.nil
      end
    end
  end
end
