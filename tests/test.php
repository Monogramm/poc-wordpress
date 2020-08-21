namespace UnitTestFiles;
 
use phpmock\phpunit\PHPMock;
 
class FilesTest extends \PHPUnit_Framework_TestCase
{
    use PHPMock;
 
    public function test_loadUploadFiles()
    {
        $this->assertEquals('object', loadUploadFiles());
    }
}