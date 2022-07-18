require 'json'

RSpec.describe do
  describe 'super_diff' do
    let(:formatted_json) { File.open('./spec/fixtures/diff_json/formatted_json.txt').read }
    let(:unformatted_json) { JSON.load(File.open('./spec/fixtures/diff_json/unformatted_json.txt')) }
    let(:unformatted_diff_json) { File.open('./spec/fixtures/diff_json/unformatted_diff_json.txt').read }

    context 'fuga' do
      it 'hoge' do
        #expect(unformatted_json).to eq unformatted_diff_json
        expect(formatted_json).to eq JSON.pretty_generate(unformatted_json)
        #expect(unformatted_json).to eq formatted_json
      end
    end
  end
end
