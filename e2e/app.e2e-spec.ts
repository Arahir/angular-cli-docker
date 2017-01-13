import { DockerPage } from './app.po';

describe('docker App', function() {
  let page: DockerPage;

  beforeEach(() => {
    page = new DockerPage();
  });

  it('should display message saying app works', () => {
    page.navigateTo();
    expect(page.getParagraphText()).toEqual('app works!');
  });
});
