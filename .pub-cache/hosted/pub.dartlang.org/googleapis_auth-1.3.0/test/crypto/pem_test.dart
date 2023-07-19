// Copyright (c) 2014, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: lines_longer_than_80_chars

import 'package:googleapis_auth/src/crypto/pem.dart';
import 'package:test/test.dart';

import '../test_utils.dart';

void main() {
  group('pem', () {
    test('null', () {
      expect(() => keyFromString(''), throwsA(isArgumentError));
    });

    test('pem--key-from-string', () {
      final key = keyFromString(testPrivateKeyString);
      expect(
          key.p,
          equals(BigInt.parse(
              '170185878019789847607218833833962851295383479739128068911675681859184825725303329240997154492057125840628991571181411414164882361723231273391547091096391845233984484218520948165420605211532206383859989286454330226302062891556391372178426684136261758077913279309249468965000813860343415338472623037185763380093')));
      expect(
          key.q,
          equals(BigInt.parse(
              '136634937867625346722869734066327766542560453705266659651284573193680854438532412351608161985232086174999341126075829838477923122149398705411098928405144549034231120055200290950893136823181693383585861140730929930114638604738429489364496581584222788741142343940831827356789459450282075298628271623617861448279')));
      expect(
          key.n,
          equals(BigInt.parse(
              '23253336869181252005308127869627478511861722018560725538542603352356752658510633204810959681459083455055115233727694253121121138828979138624495569601457246561359553177524606534054439784597124760679930421448728375265700767584567585959695707287695356045087640902894887625471020788794811661755081070077086649519865067918501869783817745592796089436450623267438942174934673417424553992577792939276705103879103955476795626469391055763713456179432199172562526422301070938382514265029982800538033050279129668807032677927531973249309321914500317007151921938466293582589451642241740444272968677617027011566610435323463337709947')));
      expect(
          key.d,
          equals(BigInt.parse(
              '21186554940454261253047269959735660724480631477978821785517431853394668885438560354085051566279884512080977781045029208574826211785037495240030508751426142586201712610225510861978099522679761260199887167944008250970681053969661407950094604171122649803382413195502685962008111346880629170494825836648656453852203519401121722270587408277317819537925146228717860401265662699719826243356610955461998054615517371279631680512102389979478015385709644867750888484550190071229275090881149432467365050794063725847869274512118390103343213000471284707060203072264487986083004823016463235156640750689592865369834958756866148520449')));
      expect(key.e, equals(BigInt.from(65537)));
      expect(
          key.dmp1,
          equals(BigInt.parse(
              '8112374428701702609593842209702915108210293280208677346843383586799722226617751812699316578927727255231777006398991855865405686833748485558923861522271817820635175987589597358267451526325993144989526626651865780047418167954318425419006133348210655541684866328365584952723843668457708310075048817739114161457')));
      expect(
          key.dmq1,
          equals(BigInt.parse(
              '69064888333930830841944331910451194321610695483381427808232052980561601308959263072336597373770287299070802348040252301131546443496698520136006747353055884093824470361301555431744464097251017848208627523520965497274938325818544542688522182250340240209771921627903870254182590341478772425006618460954711021211')));
      expect(
          key.coeff,
          equals(BigInt.parse(
              '16726959063327324857338379758571748557044292252371297447561270320393087678399207080059961434627453370656491757664831584315003981946034135341817305303511530360890203726058358401094205679273808207987503167082629712433452873772120961093571912870024590300080209978748890272607981079166485164486378666155431958545')));
    });
  });
}
