using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LOPRuby
{
    class Program
    {
        static void Main(string[] args)
        {
            ExecuteRubyFile("main.rb");
        }

        static void ExecuteRubyFile(String filename)
        {
            var runTime = IronRuby.Ruby.CreateRuntime();
            var engine = runTime.GetEngine("rb");
            engine.ExecuteFile(filename);
            Console.Write("Attributes:");
            foreach (String variable in engine.Runtime.Globals.GetVariableNames())
            {
                Console.WriteLine(variable);
            }

            //var objType = engine.Runtime.Globals.GetVariable("self");

            //var objInstance = engine.Operations.CreateInstance(objType);

            //var data = engine.Operations.InvokeMember(objInstance, "CreateCounter", "Dog");

            //Console.Write(data);
            Console.ReadKey();

        }
    }
}
