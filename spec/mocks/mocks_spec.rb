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
   
  it 'args' do
    student = Student.new
    expect(student).to receive(:foo).with(123)    
    student.foo(123)
    
end
  it 'Repetição' do
    student = Student.new
    
    # expect(student).to receive(:foo).once
    expect(student).to receive(:foo).twice
    # expect(student).to receive(:foo).excatly(3).times
    # expect(student).to receive(:foo).at_least(:once)
    # expect(student).to receive(:foo).at_least(:twice)
    # expect(student).to receive(:foo).at_least(n).times

    student.foo(123)
    student.foo(123)
    
end
  it 'Com retorno' do
    student = Student.new
    
     expect(student).to receive(:foo).with(123).and_return(false)
    

    student.foo(123)
    
    
end

end