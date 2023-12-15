require_relative '../../lib/student'
require_relative '../../lib/course'

describe 'Stub' do
  it 'has_finished?' do
    # setup
    student = Student.new   
    
    # verify
    expect(student).to receive(:bar)

    # exercise
    student.bar
  end 

end