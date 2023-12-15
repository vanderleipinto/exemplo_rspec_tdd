require_relative '../../lib/student'
require_relative '../../lib/course'

describe 'Stub' do
  it 'has_finished?' do
    student = Student.new
    course = Course.new

    allow(student).to receive(:has_finished?)
    .with(an_instance_of(Course))
    .and_return(true)

    course_finished = student.has_finished?(course)

    expect(course_finished).to be_truthy
  end

  it 'Argumentos Dinâmicos' do
    student = Student.new
    allow(student).to receive(:foo) do |arg|
      arg == :hello ? "Olá" : "hi"
    end

    expect(student.foo(:hello)).to eq('Olá')
    expect(student.foo(:hi)).to eq('hi')
  end

end