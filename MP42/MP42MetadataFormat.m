//
//  MP42MetadataFormat.m
//  MP42Foundation
//
//  Created by Damiano Galassi on 07/10/2016.
//  Copyright © 2022 Damiano Galassi. All rights reserved.
//

#import "MP42MetadataFormat.h"
#import "MP42Metadata.h"

static NSDictionary<NSString *, NSString *> *localizedStrings;

NSString *localizedMetadataKeyName(NSString *key)
{
    static dispatch_once_t onceToken;

    dispatch_once(&onceToken, ^{

        NSBundle *bundle = [NSBundle bundleForClass:[MP42Metadata class]];

        localizedStrings = @{

            MP42MetadataKeyName:
                NSLocalizedStringFromTableInBundle(@"Name", @"Localizable", bundle, nil),

            MP42MetadataKeyTrackSubTitle:
                NSLocalizedStringFromTableInBundle(@"Track Sub-Title", @"Localizable", bundle, nil),

            MP42MetadataKeyArtist:
                NSLocalizedStringFromTableInBundle(@"Artist", @"Localizable", bundle, nil),

            MP42MetadataKeyAlbumArtist:
                NSLocalizedStringFromTableInBundle(@"Album Artist", @"Localizable", bundle, nil),

            MP42MetadataKeyAlbum:
                NSLocalizedStringFromTableInBundle(@"Album", @"Localizable", bundle, nil),

            MP42MetadataKeyGrouping:
                NSLocalizedStringFromTableInBundle(@"Grouping", @"Localizable", bundle, nil),

            MP42MetadataKeyMediaKind:
                NSLocalizedStringFromTableInBundle(@"Media Kind", @"Localizable", bundle, nil),

            MP42MetadataKeyHDVideo:
                NSLocalizedStringFromTableInBundle(@"HD Video", @"Localizable", bundle, nil),

            MP42MetadataKeyGapless:
                NSLocalizedStringFromTableInBundle(@"Gapless", @"Localizable", bundle, nil),

            MP42MetadataKeyPodcast:
                NSLocalizedStringFromTableInBundle(@"Podcast", @"Localizable", bundle, nil),

            MP42MetadataKeyUserComment:
                NSLocalizedStringFromTableInBundle(@"Comments", @"Localizable", bundle, nil),

            MP42MetadataKeyUserGenre:
                NSLocalizedStringFromTableInBundle(@"Genre", @"Localizable", bundle, nil),

            MP42MetadataKeyReleaseDate:
                NSLocalizedStringFromTableInBundle(@"Release Date", @"Localizable", bundle, nil),
            
            MP42MetadataKeyDuration:
                NSLocalizedStringFromTableInBundle(
                    @"Duration",
                    @"Localizable",
                    bundle,
                    nil
                ),

            MP42MetadataKeyTrackNumber:
                NSLocalizedStringFromTableInBundle(@"Track #", @"Localizable", bundle, nil),

            MP42MetadataKeyDiscNumber:
                NSLocalizedStringFromTableInBundle(@"Disk #", @"Localizable", bundle, nil),

            MP42MetadataKeyBeatsPerMin:
                NSLocalizedStringFromTableInBundle(@"Tempo", @"Localizable", bundle, nil),

            MP42MetadataKeyTVShow:
                NSLocalizedStringFromTableInBundle(@"TV Show", @"Localizable", bundle, nil),

            MP42MetadataKeyTVEpisodeNumber:
                NSLocalizedStringFromTableInBundle(@"TV Episode #", @"Localizable", bundle, nil),

            MP42MetadataKeyTVNetwork:
                NSLocalizedStringFromTableInBundle(@"TV Network", @"Localizable", bundle, nil),

            MP42MetadataKeyTVEpisodeID:
                NSLocalizedStringFromTableInBundle(@"TV Episode ID", @"Localizable", bundle, nil),

            MP42MetadataKeyTVSeason:
                NSLocalizedStringFromTableInBundle(@"TV Season", @"Localizable", bundle, nil),

            MP42MetadataKeyDescription:
                NSLocalizedStringFromTableInBundle(@"Description", @"Localizable", bundle, nil),

            MP42MetadataKeyLongDescription:
                NSLocalizedStringFromTableInBundle(@"Long Description", @"Localizable", bundle, nil),

            MP42MetadataKeySeriesDescription:
                NSLocalizedStringFromTableInBundle(@"Series Description", @"Localizable", bundle, nil),

            MP42MetadataKeyRating:
                NSLocalizedStringFromTableInBundle(@"Rating", @"Localizable", bundle, nil),

            MP42MetadataKeyRatingAnnotation:
                NSLocalizedStringFromTableInBundle(@"Rating Annotation", @"Localizable", bundle, nil),

            MP42MetadataKeyContentRating:
                NSLocalizedStringFromTableInBundle(@"Content Rating", @"Localizable", bundle, nil),

            MP42MetadataKeyStudio:
                NSLocalizedStringFromTableInBundle(@"Studio", @"Localizable", bundle, nil),

            MP42MetadataKeyCast:
                NSLocalizedStringFromTableInBundle(@"Cast", @"Localizable", bundle, nil),

            MP42MetadataKeyDirector:
                NSLocalizedStringFromTableInBundle(@"Director", @"Localizable", bundle, nil),

            MP42MetadataKeyCodirector:
                NSLocalizedStringFromTableInBundle(@"Codirector", @"Localizable", bundle, nil),

            MP42MetadataKeyProducer:
                NSLocalizedStringFromTableInBundle(@"Producers", @"Localizable", bundle, nil),

            MP42MetadataKeyExecProducer:
                NSLocalizedStringFromTableInBundle(@"Executive Producer", @"Localizable", bundle, nil),

            MP42MetadataKeyScreenwriters:
                NSLocalizedStringFromTableInBundle(@"Screenwriters", @"Localizable", bundle, nil),

            MP42MetadataKeyCopyright:
                NSLocalizedStringFromTableInBundle(@"Copyright", @"Localizable", bundle, nil),

            MP42MetadataKeyEncodingTool:
                NSLocalizedStringFromTableInBundle(@"Encoding Tool", @"Localizable", bundle, nil),

            MP42MetadataKeyEncodedBy:
                NSLocalizedStringFromTableInBundle(@"Encoded By", @"Localizable", bundle, nil),

            MP42MetadataKeyKeywords:
                NSLocalizedStringFromTableInBundle(@"Keywords", @"Localizable", bundle, nil),

            MP42MetadataKeyCategory:
                NSLocalizedStringFromTableInBundle(@"Category", @"Localizable", bundle, nil),

            MP42MetadataKeyContentID:
                NSLocalizedStringFromTableInBundle(@"content ID", @"Localizable", bundle, nil),

            MP42MetadataKeyArtistID:
                NSLocalizedStringFromTableInBundle(@"artist ID", @"Localizable", bundle, nil),

            MP42MetadataKeyPlaylistID:
                NSLocalizedStringFromTableInBundle(@"playlist ID", @"Localizable", bundle, nil),

            MP42MetadataKeyGenreID:
                NSLocalizedStringFromTableInBundle(@"genre ID", @"Localizable", bundle, nil),

            MP42MetadataKeyComposerID:
                NSLocalizedStringFromTableInBundle(@"composer ID", @"Localizable", bundle, nil),

            MP42MetadataKeyXID:
                NSLocalizedStringFromTableInBundle(@"XID", @"Localizable", bundle, nil),

            MP42MetadataKeyAppleID:
                NSLocalizedStringFromTableInBundle(@"iTunes Account", @"Localizable", bundle, nil),

            MP42MetadataKeyAccountKind:
                NSLocalizedStringFromTableInBundle(@"iTunes Account Type", @"Localizable", bundle, nil),

            MP42MetadataKeyAccountCountry:
                NSLocalizedStringFromTableInBundle(@"iTunes Country", @"Localizable", bundle, nil),

            MP42MetadataKeyPurchasedDate:
                NSLocalizedStringFromTableInBundle(@"Purchase Date", @"Localizable", bundle, nil),

            MP42MetadataKeyOnlineExtras:
                NSLocalizedStringFromTableInBundle(@"Online Extras", @"Localizable", bundle, nil),

            MP42MetadataKeySongDescription:
                NSLocalizedStringFromTableInBundle(@"Song Description", @"Localizable", bundle, nil),

            MP42MetadataKeyArtDirector:
                NSLocalizedStringFromTableInBundle(@"Art Director", @"Localizable", bundle, nil),

            MP42MetadataKeyComposer:
                NSLocalizedStringFromTableInBundle(@"Composer", @"Localizable", bundle, nil),

            MP42MetadataKeyArranger:
                NSLocalizedStringFromTableInBundle(@"Arranger", @"Localizable", bundle, nil),

            MP42MetadataKeyAuthor:
                NSLocalizedStringFromTableInBundle(@"Lyricist", @"Localizable", bundle, nil),

            MP42MetadataKeyLyrics:
                NSLocalizedStringFromTableInBundle(@"Lyrics", @"Localizable", bundle, nil),

            MP42MetadataKeyAcknowledgement:
                NSLocalizedStringFromTableInBundle(@"Acknowledgement", @"Localizable", bundle, nil),

            MP42MetadataKeyConductor:
                NSLocalizedStringFromTableInBundle(@"Conductor", @"Localizable", bundle, nil),

            MP42MetadataKeyLinerNotes:
                NSLocalizedStringFromTableInBundle(@"Linear Notes", @"Localizable", bundle, nil),

            MP42MetadataKeyRecordCompany:
                NSLocalizedStringFromTableInBundle(@"Record Company", @"Localizable", bundle, nil),

            MP42MetadataKeyOriginalArtist:
                NSLocalizedStringFromTableInBundle(@"Original Artist", @"Localizable", bundle, nil),

            MP42MetadataKeyPhonogramRights:
                NSLocalizedStringFromTableInBundle(@"Phonogram Rights", @"Localizable", bundle, nil),

            MP42MetadataKeySongProducer:
                NSLocalizedStringFromTableInBundle(@"Song Producer", @"Localizable", bundle, nil),

            MP42MetadataKeyPerformer:
                NSLocalizedStringFromTableInBundle(@"Performer", @"Localizable", bundle, nil),

            MP42MetadataKeyPublisher:
                NSLocalizedStringFromTableInBundle(@"Publisher", @"Localizable", bundle, nil),

            MP42MetadataKeySoundEngineer:
                NSLocalizedStringFromTableInBundle(@"Sound Engineer", @"Localizable", bundle, nil),

            MP42MetadataKeySoloist:
                NSLocalizedStringFromTableInBundle(@"Soloist", @"Localizable", bundle, nil),

            MP42MetadataKeyDiscCompilation:
                NSLocalizedStringFromTableInBundle(@"Compilation", @"Localizable", bundle, nil),

            MP42MetadataKeyCredits:
                NSLocalizedStringFromTableInBundle(@"Credits", @"Localizable", bundle, nil),

            MP42MetadataKeyThanks:
                NSLocalizedStringFromTableInBundle(@"Thanks", @"Localizable", bundle, nil),

            MP42MetadataKeyWorkName:
                NSLocalizedStringFromTableInBundle(@"Work Name", @"Localizable", bundle, nil),

            MP42MetadataKeyMovementName:
                NSLocalizedStringFromTableInBundle(@"Movement Name", @"Localizable", bundle, nil),

            MP42MetadataKeyMovementNumber:
                NSLocalizedStringFromTableInBundle(@"Movement Number", @"Localizable", bundle, nil),

            MP42MetadataKeyMovementCount:
                NSLocalizedStringFromTableInBundle(@"Movement Count", @"Localizable", bundle, nil),

            MP42MetadataKeyShowWorkAndMovement:
                NSLocalizedStringFromTableInBundle(@"Show Work And Movement", @"Localizable", bundle, nil),

            MP42MetadataKeySortName:
                NSLocalizedStringFromTableInBundle(@"Sort Name", @"Localizable", bundle, nil),

            MP42MetadataKeySortArtist:
                NSLocalizedStringFromTableInBundle(@"Sort Artist", @"Localizable", bundle, nil),

            MP42MetadataKeySortAlbumArtist:
                NSLocalizedStringFromTableInBundle(@"Sort Album Artist", @"Localizable", bundle, nil),

            MP42MetadataKeySortAlbum:
                NSLocalizedStringFromTableInBundle(@"Sort Album", @"Localizable", bundle, nil),

            MP42MetadataKeySortComposer:
                NSLocalizedStringFromTableInBundle(@"Sort Composer", @"Localizable", bundle, nil),

            MP42MetadataKeySortTVShow:
                NSLocalizedStringFromTableInBundle(@"Sort TV Show", @"Localizable", bundle, nil),

            // MARK: TMDb Extended Metadata

            MP42MetadataKeyTMDbContentID:
                NSLocalizedStringFromTableInBundle(@"TMDb Content ID", @"Localizable", bundle, nil),

            // MARK: Prime Video Extended Metadata

            MP42MetadataKeyPrimeVideoContentID:
                NSLocalizedStringFromTableInBundle(@"Prime Video Content ID", @"Localizable", bundle, nil),

            MP42MetadataKeyPrimeVideoContentURL:
                NSLocalizedStringFromTableInBundle(@"Prime Video Content URL", @"Localizable", bundle, nil),

            // MARK: FANZA Extended Metadata

            MP42MetadataKeyFANZAContentID:
                NSLocalizedStringFromTableInBundle(@"FANZA Content ID", @"Localizable", bundle, nil),

            MP42MetadataKeyFANZAProductID:
                NSLocalizedStringFromTableInBundle(@"FANZA Product ID", @"Localizable", bundle, nil),
            
            // MARK: MGS Extended Metadata
            MP42MetadataKeyMGSContentID:
                NSLocalizedStringFromTableInBundle(@"MGS Content ID", @"Localizable", bundle, nil),
            MP42MetadataKeyMGSProductID:
                NSLocalizedStringFromTableInBundle(@"MGS Product ID", @"Localizable", bundle, nil),
            MP42MetadataKeyMGSContentURL:
                NSLocalizedStringFromTableInBundle(@"MGS Content URL", @"Localizable", bundle, nil),

            // MARK: DMM Extended Metadata

            MP42MetadataKeyDMMContentID:
                NSLocalizedStringFromTableInBundle(@"DMM Content ID", @"Localizable", bundle, nil),

            MP42MetadataKeyDMMProductID:
                NSLocalizedStringFromTableInBundle(@"DMM Product ID", @"Localizable", bundle, nil),

            MP42MetadataKeyDMMContentURL:
                NSLocalizedStringFromTableInBundle(@"DMM Content URL", @"Localizable", bundle, nil),
            
            // MARK: Caribbean Extended Metadata

            MP42MetadataKeyCaribbeanContentID:
                NSLocalizedStringFromTableInBundle(@"Caribbean Content ID", @"Localizable", bundle, nil),

            MP42MetadataKeyCaribbeanContentURL:
                NSLocalizedStringFromTableInBundle(@"Caribbean Content URL", @"Localizable", bundle, nil),

            // MARK: 1Pondo Extended Metadata

            MP42MetadataKey1PondoContentID:
                NSLocalizedStringFromTableInBundle(@"1Pondo Content ID", @"Localizable", bundle, nil),

            MP42MetadataKey1PondoContentURL:
                NSLocalizedStringFromTableInBundle(@"1Pondo Content URL", @"Localizable", bundle, nil),

            MP42MetadataKeyMissAVContentID: NSLocalizedStringFromTableInBundle(@"MissAV Content ID", @"Localizable", bundle, nil),
            MP42MetadataKeyMissAVProductID: NSLocalizedStringFromTableInBundle(@"MissAV Product ID", @"Localizable", bundle, nil),
            MP42MetadataKeyMissAVContentURL: NSLocalizedStringFromTableInBundle(@"MissAV Content URL", @"Localizable", bundle, nil),
            MP42MetadataKeyJapanDVDContentID: NSLocalizedStringFromTableInBundle(@"Japan DVD Content ID", @"Localizable", bundle, nil),
            MP42MetadataKeyJapanDVDProductID: NSLocalizedStringFromTableInBundle(@"Japan DVD Product ID", @"Localizable", bundle, nil),
            MP42MetadataKeyJapanDVDContentURL: NSLocalizedStringFromTableInBundle(@"Japan DVD Content URL", @"Localizable", bundle, nil),

            MP42MetadataKeyFANZAContentURL:
                NSLocalizedStringFromTableInBundle(@"FANZA Content URL", @"Localizable", bundle, nil),

            // MARK: Wavve Extended Metadata

            MP42MetadataKeyWavveMovieID:
                NSLocalizedStringFromTableInBundle(@"Wavve Movie ID", @"Localizable", bundle, nil),

            MP42MetadataKeyWavveShowID:
                NSLocalizedStringFromTableInBundle(@"Wavve Show ID", @"Localizable", bundle, nil),

            MP42MetadataKeyWavveEpisodeID:
                NSLocalizedStringFromTableInBundle(@"Wavve Episode ID", @"Localizable", bundle, nil),

            MP42MetadataKeyWavveContentURL:
                NSLocalizedStringFromTableInBundle(@"Wavve Content URL", @"Localizable", bundle, nil),

            // MARK: U-NEXT Extended Metadata

            MP42MetadataKeyUNEXTMovieID:
                NSLocalizedStringFromTableInBundle(@"U-NEXT Movie ID", @"Localizable", bundle, nil),

            MP42MetadataKeyUNEXTShowID:
                NSLocalizedStringFromTableInBundle(@"U-NEXT Show ID", @"Localizable", bundle, nil),

            MP42MetadataKeyUNEXTEpisodeID:
                NSLocalizedStringFromTableInBundle(@"U-NEXT Episode ID", @"Localizable", bundle, nil),

            MP42MetadataKeyUNEXTContentURL:
                NSLocalizedStringFromTableInBundle(@"U-NEXT Content URL", @"Localizable", bundle, nil),

            // MARK: VMX Extended Metadata

            MP42MetadataKeyService:
                NSLocalizedStringFromTableInBundle(@"Service", @"Localizable", bundle, nil),

            MP42MetadataKeyVMXContentID:
                NSLocalizedStringFromTableInBundle(@"VMX Content ID", @"Localizable", bundle, nil),

            MP42MetadataKeyVMXContentURL:
                NSLocalizedStringFromTableInBundle(@"VMX Content URL", @"Localizable", bundle, nil),
            
            // MARK: Paramount+ Extended Metadata
            MP42MetadataKeyParamountPlusMovieID:
                NSLocalizedStringFromTableInBundle(@"Paramount+ Movie ID", @"Localizable", bundle, nil),

            MP42MetadataKeyParamountPlusEpisodeID:
                NSLocalizedStringFromTableInBundle(@"Paramount+ Episode ID", @"Localizable", bundle, nil),

            MP42MetadataKeyParamountPlusContentURL:
                NSLocalizedStringFromTableInBundle(@"Paramount+ Content URL", @"Localizable", bundle, nil),

            // MARK: Netflix Extended Metadata

            MP42MetadataKeyNetflixMovieID:
                NSLocalizedStringFromTableInBundle(@"Netflix Movie ID", @"Localizable", bundle, nil),

            MP42MetadataKeyNetflixShowID:
                NSLocalizedStringFromTableInBundle(@"Netflix Show ID", @"Localizable", bundle, nil),

            MP42MetadataKeyNetflixEpisodeID:
                NSLocalizedStringFromTableInBundle(@"Netflix Episode ID", @"Localizable", bundle, nil),

            MP42MetadataKeyNetflixContentURL:
                NSLocalizedStringFromTableInBundle(@"Netflix Content URL", @"Localizable", bundle, nil),

            MP42MetadataKeyNetflixRating:
                NSLocalizedStringFromTableInBundle(
                    @"Netflix Rating",
                    @"Localizable",
                    bundle,
                    nil
                ),

            MP42MetadataKeyNetflixRatingDescription:
                NSLocalizedStringFromTableInBundle(
                    @"Netflix Rating Description",
                    @"Localizable",
                    bundle,
                    nil
                ),

            MP42MetadataKeyNetflixContentAdvisories:
                NSLocalizedStringFromTableInBundle(
                    @"Netflix Content Advisories",
                    @"Localizable",
                    bundle,
                    nil
                ),
            
            MP42MetadataKeyNetflixGenre:
                NSLocalizedStringFromTableInBundle(
                    @"Netflix Genre",
                    @"Localizable",
                    bundle,
                    nil
                ),
            
            // MARK: CATCHPLAY+ Extended Metadata
            MP42MetadataKeyCatchplayMovieID: NSLocalizedStringFromTableInBundle(@"CATCHPLAY+ Movie ID", @"Localizable", bundle, nil),
            MP42MetadataKeyCatchplayShowID: NSLocalizedStringFromTableInBundle(@"CATCHPLAY+ TV Show ID", @"Localizable", bundle, nil),
            MP42MetadataKeyCatchplayEpisodeID: NSLocalizedStringFromTableInBundle(@"CATCHPLAY+ Episode ID", @"Localizable", bundle, nil),
            MP42MetadataKeyCatchplayContentURL: NSLocalizedStringFromTableInBundle(@"CATCHPLAY+ Content URL", @"Localizable", bundle, nil),
            MP42MetadataKeyCatchplayContentAdvisories: NSLocalizedStringFromTableInBundle(@"CATCHPLAY+ Content Advisories", @"Localizable", bundle, nil),

            // MARK: Disney+ Extended Metadata
            
            MP42MetadataKeyDisneyPlusMovieID:
                NSLocalizedStringFromTableInBundle(
                    @"Disney+ Movie ID",
                    @"Localizable",
                    bundle,
                    nil
                ),

            MP42MetadataKeyDisneyPlusShowID:
                NSLocalizedStringFromTableInBundle(
                    @"Disney+ Show ID",
                    @"Localizable",
                    bundle,
                    nil
                ),

            MP42MetadataKeyDisneyPlusEpisodeID:
                NSLocalizedStringFromTableInBundle(
                    @"Disney+ Episode ID",
                    @"Localizable",
                    bundle,
                    nil
                ),
            
            MP42MetadataKeyDisneyPlusContentURL:
                NSLocalizedStringFromTableInBundle(
                    @"Disney+ Content URL",
                    @"Localizable",
                    bundle,
                    nil
                ),
            
            // MARK: Vidio Extended Metadata

            MP42MetadataKeyVidioGenre:
                NSLocalizedStringFromTableInBundle(@"Vidio Genre", @"Localizable", bundle, nil),

            MP42MetadataKeyVidioRating:
                NSLocalizedStringFromTableInBundle(@"Vidio Rating", @"Localizable", bundle, nil),

            MP42MetadataKeyVidioContentURL:
                NSLocalizedStringFromTableInBundle(@"Vidio Content URL", @"Localizable", bundle, nil),

            MP42MetadataKeyVidioMovieID:
                NSLocalizedStringFromTableInBundle(@"Vidio Movie ID", @"Localizable", bundle, nil),

            MP42MetadataKeyVidioShowID:
                NSLocalizedStringFromTableInBundle(@"Vidio Show ID", @"Localizable", bundle, nil),

            MP42MetadataKeyVidioEpisodeID:
                NSLocalizedStringFromTableInBundle(@"Vidio Episode ID", @"Localizable", bundle, nil),

            // MARK: Apple Music Extended Metadata

            MP42MetadataKeyAppleMusicContentID:
                NSLocalizedStringFromTableInBundle(
                    @"Apple Music Content ID",
                    @"Localizable",
                    bundle,
                    nil
                ),

            MP42MetadataKeyAppleMusicArtistID:
                NSLocalizedStringFromTableInBundle(
                    @"Apple Music Artist ID",
                    @"Localizable",
                    bundle,
                    nil
                ),

            MP42MetadataKeyAppleMusicAlbumID:
                NSLocalizedStringFromTableInBundle(
                    @"Apple Music Album ID",
                    @"Localizable",
                    bundle,
                    nil
                ),

            MP42MetadataKeyAppleMusicURL:
                NSLocalizedStringFromTableInBundle(
                    @"Apple Music URL",
                    @"Localizable",
                    bundle,
                    nil
                ),

            MP42MetadataKeyAppleMusicISRC:
                NSLocalizedStringFromTableInBundle(
                    @"ISRC",
                    @"Localizable",
                    bundle,
                    nil
                ),
            

            // MARK: Apple TV Extended Metadata

            MP42MetadataKeyAppleTVContentID:
                NSLocalizedStringFromTableInBundle(@"Apple TV Content ID", @"Localizable", bundle, nil),

            MP42MetadataKeyAppleTVShowID:
                NSLocalizedStringFromTableInBundle(@"Apple TV Show ID", @"Localizable", bundle, nil),

            MP42MetadataKeyAppleTVSeasonID:
                NSLocalizedStringFromTableInBundle(@"Apple TV Season ID", @"Localizable", bundle, nil),

            MP42MetadataKeyAppleTVEpisodeID:
                NSLocalizedStringFromTableInBundle(@"Apple TV Episode ID", @"Localizable", bundle, nil),

            MP42MetadataKeyAppleTVContentURL:
                NSLocalizedStringFromTableInBundle(@"Apple TV Content URL", @"Localizable", bundle, nil),

            MP42MetadataKeyAppleTVShowURL:
                NSLocalizedStringFromTableInBundle(@"Apple TV Show URL", @"Localizable", bundle, nil),

            MP42MetadataKeyAppleTVSeasonURL:
                NSLocalizedStringFromTableInBundle(@"Apple TV Season URL", @"Localizable", bundle, nil),

            MP42MetadataKeyAppleGenreID:
                NSLocalizedStringFromTableInBundle(@"Apple Genre ID", @"Localizable", bundle, nil),

            MP42MetadataKeyCountryOfOrigin:
                NSLocalizedStringFromTableInBundle(@"Country of Origin", @"Localizable", bundle, nil),

            MP42MetadataKeyOriginalSpokenLanguage:
                NSLocalizedStringFromTableInBundle(@"Original Spoken Language", @"Localizable", bundle, nil),

            MP42MetadataKeyRecommendedAge:
                NSLocalizedStringFromTableInBundle(@"Recommended Age", @"Localizable", bundle, nil),

            MP42MetadataKeyContentAdvisories:
                NSLocalizedStringFromTableInBundle(@"Content Advisories", @"Localizable", bundle, nil),

            MP42MetadataKeyCommonSenseSummary:
                NSLocalizedStringFromTableInBundle(@"Common Sense Summary", @"Localizable", bundle, nil),

            MP42MetadataKeyCommonSenseContentInfo:
                NSLocalizedStringFromTableInBundle(@"Common Sense Content Info", @"Localizable", bundle, nil),

            MP42MetadataKeyAppleTVRatingName:
                NSLocalizedStringFromTableInBundle(@"Apple TV Rating Name", @"Localizable", bundle, nil),

            MP42MetadataKeyAppleTVRatingSystem:
                NSLocalizedStringFromTableInBundle(@"Apple TV Rating System", @"Localizable", bundle, nil),

            MP42MetadataKeyAppleTVRatingSystemType:
                NSLocalizedStringFromTableInBundle(@"Apple TV Rating System Type", @"Localizable", bundle, nil),

            MP42MetadataKeyAppleTVRatingValue:
                NSLocalizedStringFromTableInBundle(@"Apple TV Rating Value", @"Localizable", bundle, nil),

            MP42MetadataKeyAppleTVEpisodeIndex:
                NSLocalizedStringFromTableInBundle(@"Apple TV Episode Index", @"Localizable", bundle, nil),

            MP42MetadataKeyAppleTVFractionalEpisodeNumber:
                NSLocalizedStringFromTableInBundle(@"Apple TV Fractional Episode Number", @"Localizable", bundle, nil),

            MP42MetadataKeyAppleTVIsFirstEpisode:
                NSLocalizedStringFromTableInBundle(@"Apple TV Is First Episode", @"Localizable", bundle, nil),

            MP42MetadataKeyAppleTVSeasonAdamID:
                NSLocalizedStringFromTableInBundle(@"Apple TV Season Adam ID", @"Localizable", bundle, nil),

            MP42MetadataKeyAppleTVSeasonCanonicalID:
                NSLocalizedStringFromTableInBundle(@"Apple TV Season Canonical ID", @"Localizable", bundle, nil),

            MP42MetadataKeyAppleTVVersion:
                NSLocalizedStringFromTableInBundle(@"Apple TV Version", @"Localizable", bundle, nil),

            MP42MetadataKeyAppleTVIsEntitledToPlay:
                NSLocalizedStringFromTableInBundle(@"Apple TV Entitled to Play", @"Localizable", bundle, nil),

            MP42MetadataKeyAppleTVRoles:
                NSLocalizedStringFromTableInBundle(@"Apple TV Roles", @"Localizable", bundle, nil),

            MP42MetadataKeyCreator:
                NSLocalizedStringFromTableInBundle(@"Creator", @"Localizable", bundle, nil)
        };
    });

    NSString *localizedString = localizedStrings[key];

    return localizedString
        ? localizedString
        : key;
}


// MARK: - Common Metadata

NSString *const MP42MetadataKeyName = @"Name";
NSString *const MP42MetadataKeyTrackSubTitle = @"Track Sub-Title";

NSString *const MP42MetadataKeyAlbum = @"Album";
NSString *const MP42MetadataKeyAlbumArtist = @"Album Artist";
NSString *const MP42MetadataKeyArtist = @"Artist";

NSString *const MP42MetadataKeyGrouping = @"Grouping";
NSString *const MP42MetadataKeyUserComment = @"Comments";
NSString *const MP42MetadataKeyUserGenre = @"Genre";
NSString *const MP42MetadataKeyReleaseDate = @"Release Date";
NSString *const MP42MetadataKeyDuration = @"Duration";

NSString *const MP42MetadataKeyTrackNumber = @"Track #";
NSString *const MP42MetadataKeyDiscNumber = @"Disk #";
NSString *const MP42MetadataKeyBeatsPerMin = @"Tempo";

NSString *const MP42MetadataKeyKeywords = @"Keywords";
NSString *const MP42MetadataKeyCategory = @"Category";
NSString *const MP42MetadataKeyCredits = @"Credits";
NSString *const MP42MetadataKeyThanks = @"Thanks";
NSString *const MP42MetadataKeyCopyright = @"Copyright";

NSString *const MP42MetadataKeyDescription = @"Description";
NSString *const MP42MetadataKeyLongDescription = @"Long Description";
NSString *const MP42MetadataKeySeriesDescription = @"Series Description";
NSString *const MP42MetadataKeySongDescription = @"Song Description";

NSString *const MP42MetadataKeyRating = @"Rating";
NSString *const MP42MetadataKeyRatingAnnotation = @"Rating Annotation";
NSString *const MP42MetadataKeyContentRating = @"Content Rating";


// MARK: - Encoding

NSString *const MP42MetadataKeyEncodedBy = @"Encoded By";
NSString *const MP42MetadataKeyEncodingTool = @"Encoding Tool";


// MARK: - Media

NSString *const MP42MetadataKeyCoverArt = @"Cover Art";
NSString *const MP42MetadataKeyMediaKind = @"Media Kind";
NSString *const MP42MetadataKeyGapless = @"Gapless";
NSString *const MP42MetadataKeyHDVideo = @"HD Video";
NSString *const MP42MetadataKeyiTunesU = @"iTunes U";
NSString *const MP42MetadataKeyPodcast = @"Podcast";


// MARK: - Movie / TV Show

NSString *const MP42MetadataKeyStudio = @"Studio";
NSString *const MP42MetadataKeyCast = @"Cast";
NSString *const MP42MetadataKeyDirector = @"Director";
NSString *const MP42MetadataKeyCodirector = @"Codirector";
NSString *const MP42MetadataKeyProducer = @"Producers";
NSString *const MP42MetadataKeyExecProducer = @"Executive Producer";
NSString *const MP42MetadataKeyScreenwriters = @"Screenwriters";


// MARK: - TV Show

NSString *const MP42MetadataKeyTVShow = @"TV Show";
NSString *const MP42MetadataKeyTVEpisodeNumber = @"TV Episode #";
NSString *const MP42MetadataKeyTVNetwork = @"TV Network";
NSString *const MP42MetadataKeyTVEpisodeID = @"TV Episode ID";
NSString *const MP42MetadataKeyTVSeason = @"TV Season";


// MARK: - Music

NSString *const MP42MetadataKeyArtDirector = @"Art Director";
NSString *const MP42MetadataKeyComposer = @"Composer";
NSString *const MP42MetadataKeyArranger = @"Arranger";
NSString *const MP42MetadataKeyAuthor = @"Lyricist";
NSString *const MP42MetadataKeyLyrics = @"Lyrics";
NSString *const MP42MetadataKeyAcknowledgement = @"Acknowledgement";
NSString *const MP42MetadataKeyConductor = @"Conductor";
NSString *const MP42MetadataKeyLinerNotes = @"Linear Notes";
NSString *const MP42MetadataKeyRecordCompany = @"Record Company";
NSString *const MP42MetadataKeyOriginalArtist = @"Original Artist";
NSString *const MP42MetadataKeyPhonogramRights = @"Phonogram Rights";
NSString *const MP42MetadataKeySongProducer = @"Song Producer";
NSString *const MP42MetadataKeyPerformer = @"Performer";
NSString *const MP42MetadataKeyPublisher = @"Publisher";
NSString *const MP42MetadataKeySoundEngineer = @"Sound Engineer";
NSString *const MP42MetadataKeySoloist = @"Soloist";
NSString *const MP42MetadataKeyDiscCompilation = @"Compilation";


// MARK: - Classical Music

NSString *const MP42MetadataKeyWorkName = @"Work Name";
NSString *const MP42MetadataKeyMovementName = @"Movement Name";
NSString *const MP42MetadataKeyMovementNumber = @"Movement Number";
NSString *const MP42MetadataKeyMovementCount = @"Movement Count";
NSString *const MP42MetadataKeyShowWorkAndMovement = @"Show Work And Movement";


// MARK: - iTunes Store

NSString *const MP42MetadataKeyXID = @"XID";
NSString *const MP42MetadataKeyArtistID = @"artist ID";
NSString *const MP42MetadataKeyComposerID = @"composer ID";
NSString *const MP42MetadataKeyContentID = @"content ID";
NSString *const MP42MetadataKeyGenreID = @"genre ID";
NSString *const MP42MetadataKeyPlaylistID = @"playlist ID";
NSString *const MP42MetadataKeyAppleID = @"iTunes Account";
NSString *const MP42MetadataKeyAccountKind = @"iTunes Account Type";
NSString *const MP42MetadataKeyAccountCountry = @"iTunes Country";
NSString *const MP42MetadataKeyPurchasedDate = @"Purchase Date";
NSString *const MP42MetadataKeyOnlineExtras = @"Online Extras";


// MARK: - Sort

NSString *const MP42MetadataKeySortName = @"Sort Name";
NSString *const MP42MetadataKeySortArtist = @"Sort Artist";
NSString *const MP42MetadataKeySortAlbumArtist = @"Sort Album Artist";
NSString *const MP42MetadataKeySortAlbum = @"Sort Album";
NSString *const MP42MetadataKeySortComposer = @"Sort Composer";
NSString *const MP42MetadataKeySortTVShow = @"Sort TV Show";


// MARK: - Unofficial Audiobook Metadata

NSString *const MP42MetadataKeyUnofficialSubtitle = @"Unofficial Subtitle";
NSString *const MP42MetadataKeyUnofficialLanguage = @"Unofficial Language";
NSString *const MP42MetadataKeyUnofficialASIN = @"Unofficial ASIN";
NSString *const MP42MetadataKeyUnofficialAbridged = @"Unofficial Abridged";


// MARK: - TMDb Extended Metadata

NSString *const MP42MetadataKeyTMDbContentID =
    @"TMDb Content ID";


// MARK: - Prime Video Extended Metadata

NSString *const MP42MetadataKeyPrimeVideoContentID =
    @"Prime Video Content ID";

NSString *const MP42MetadataKeyPrimeVideoContentURL =
    @"Prime Video Content URL";


// MARK: - FANZA Extended Metadata

NSString *const MP42MetadataKeyFANZAContentID =
    @"FANZA Content ID";

NSString *const MP42MetadataKeyFANZAProductID =
    @"FANZA Product ID";

NSString *const MP42MetadataKeyFANZAContentURL =
    @"FANZA Content URL";

// MARK: - MGS Extended Metadata
NSString *const MP42MetadataKeyMGSContentID = @"MGS Content ID";
NSString *const MP42MetadataKeyMGSProductID = @"MGS Product ID";
NSString *const MP42MetadataKeyMGSContentURL = @"MGS Content URL";

// MARK: - DMM Extended Metadata

NSString *const MP42MetadataKeyDMMContentID =
    @"DMM Content ID";

NSString *const MP42MetadataKeyDMMProductID =
    @"DMM Product ID";

NSString *const MP42MetadataKeyDMMContentURL =
    @"DMM Content URL";

// MARK: - Caribbean Extended Metadata

NSString *const MP42MetadataKeyCaribbeanContentID =
    @"Caribbean Content ID";

NSString *const MP42MetadataKeyCaribbeanContentURL =
    @"Caribbean Content URL";

// MARK: - 1Pondo Extended Metadata

NSString *const MP42MetadataKey1PondoContentID =
    @"1Pondo Content ID";

NSString *const MP42MetadataKey1PondoContentURL =
    @"1Pondo Content URL";

NSString *const MP42MetadataKeyMissAVContentID = @"MissAV Content ID";
NSString *const MP42MetadataKeyMissAVProductID = @"MissAV Product ID";
NSString *const MP42MetadataKeyMissAVContentURL = @"MissAV Content URL";
NSString *const MP42MetadataKeyJapanDVDContentID = @"Japan DVD Content ID";
NSString *const MP42MetadataKeyJapanDVDProductID = @"Japan DVD Product ID";
NSString *const MP42MetadataKeyJapanDVDContentURL = @"Japan DVD Content URL";

// MARK: - Wavve Extended Metadata

NSString *const MP42MetadataKeyWavveMovieID =
    @"Wavve Movie ID";

NSString *const MP42MetadataKeyWavveShowID =
    @"Wavve Show ID";

NSString *const MP42MetadataKeyWavveEpisodeID =
    @"Wavve Episode ID";

NSString *const MP42MetadataKeyWavveContentURL =
    @"Wavve Content URL";


// MARK: - U-NEXT Extended Metadata

NSString *const MP42MetadataKeyUNEXTMovieID =
    @"U-NEXT Movie ID";

NSString *const MP42MetadataKeyUNEXTShowID =
    @"U-NEXT Show ID";

NSString *const MP42MetadataKeyUNEXTEpisodeID =
    @"U-NEXT Episode ID";

NSString *const MP42MetadataKeyUNEXTContentURL =
    @"U-NEXT Content URL";

// MARK: - VMX Extended Metadata

NSString *const MP42MetadataKeyService =
    @"Service";

NSString *const MP42MetadataKeyVMXContentID =
    @"VMX Content ID";

NSString *const MP42MetadataKeyVMXContentURL =
    @"VMX Content URL";

// MARK: - Paramount+ Extended Metadata
NSString *const MP42MetadataKeyParamountPlusMovieID =
    @"Paramount+ Movie ID";

NSString *const MP42MetadataKeyParamountPlusEpisodeID =
    @"Paramount+ Episode ID";

NSString *const MP42MetadataKeyParamountPlusContentURL =
    @"Paramount+ Content URL";

// MARK: - Netflix Extended Metadata

NSString *const MP42MetadataKeyNetflixMovieID =
    @"Netflix Movie ID";

NSString *const MP42MetadataKeyNetflixShowID =
    @"Netflix Show ID";

NSString *const MP42MetadataKeyNetflixEpisodeID =
    @"Netflix Episode ID";

NSString *const MP42MetadataKeyNetflixContentURL =
    @"Netflix Content URL";

NSString *const MP42MetadataKeyNetflixRating =
    @"Netflix Rating";

NSString *const MP42MetadataKeyNetflixRatingDescription =
    @"Netflix Rating Description";

NSString *const MP42MetadataKeyNetflixContentAdvisories =
    @"Netflix Content Advisories";

NSString *const MP42MetadataKeyNetflixGenre =
    @"Netflix Genre";

// MARK: - CATCHPLAY+ Extended Metadata
NSString *const MP42MetadataKeyCatchplayMovieID = @"CATCHPLAY+ Movie ID";
NSString *const MP42MetadataKeyCatchplayShowID = @"CATCHPLAY+ TV Show ID";
NSString *const MP42MetadataKeyCatchplayEpisodeID = @"CATCHPLAY+ Episode ID";
NSString *const MP42MetadataKeyCatchplayContentURL = @"CATCHPLAY+ Content URL";
NSString *const MP42MetadataKeyCatchplayContentAdvisories = @"CATCHPLAY+ Content Advisories";

// MARK: - Disney+ Extended Metadata

NSString *const MP42MetadataKeyDisneyPlusMovieID =
    @"Disney+ Movie ID";

NSString *const MP42MetadataKeyDisneyPlusShowID =
    @"Disney+ Show ID";

NSString *const MP42MetadataKeyDisneyPlusEpisodeID =
    @"Disney+ Episode ID";

NSString *const MP42MetadataKeyDisneyPlusContentURL =
    @"Disney+ Content URL";

// MARK: - Vidio Extended Metadata

NSString *const MP42MetadataKeyVidioGenre =
    @"Vidio Genre";

NSString *const MP42MetadataKeyVidioRating =
    @"Vidio Rating";

NSString *const MP42MetadataKeyVidioContentURL =
    @"Vidio Content URL";

NSString *const MP42MetadataKeyVidioMovieID =
    @"Vidio Movie ID";

NSString *const MP42MetadataKeyVidioShowID =
    @"Vidio Show ID";

NSString *const MP42MetadataKeyVidioEpisodeID =
    @"Vidio Episode ID";

// MARK: - Apple Music Extended Metadata

NSString *const MP42MetadataKeyAppleMusicContentID =
    @"Apple Music Content ID";

NSString *const MP42MetadataKeyAppleMusicArtistID =
    @"Apple Music Artist ID";

NSString *const MP42MetadataKeyAppleMusicAlbumID =
    @"Apple Music Album ID";

NSString *const MP42MetadataKeyAppleMusicURL =
    @"Apple Music URL";

NSString *const MP42MetadataKeyAppleMusicISRC =
    @"ISRC";


// MARK: - Apple TV Extended Metadata

NSString *const MP42MetadataKeyAppleTVContentID =
    @"Apple TV Content ID";

NSString *const MP42MetadataKeyAppleTVShowID =
    @"Apple TV Show ID";

NSString *const MP42MetadataKeyAppleTVSeasonID =
    @"Apple TV Season ID";

NSString *const MP42MetadataKeyAppleTVEpisodeID =
    @"Apple TV Episode ID";

NSString *const MP42MetadataKeyAppleTVContentURL =
    @"Apple TV Content URL";

NSString *const MP42MetadataKeyAppleTVShowURL =
    @"Apple TV Show URL";

NSString *const MP42MetadataKeyAppleTVSeasonURL =
    @"Apple TV Season URL";

NSString *const MP42MetadataKeyAppleGenreID =
    @"Apple Genre ID";

NSString *const MP42MetadataKeyAppleTVDuration =
    @"Duration";

NSString *const MP42MetadataKeyCountryOfOrigin =
    @"Country of Origin";

NSString *const MP42MetadataKeyOriginalSpokenLanguage =
    @"Original Spoken Language";

NSString *const MP42MetadataKeyRecommendedAge =
    @"Recommended Age";

NSString *const MP42MetadataKeyContentAdvisories =
    @"Content Advisories";

NSString *const MP42MetadataKeyCommonSenseSummary =
    @"Common Sense Summary";

NSString *const MP42MetadataKeyCommonSenseContentInfo =
    @"Common Sense Content Info";

NSString *const MP42MetadataKeyAppleTVRatingName =
    @"Apple TV Rating Name";

NSString *const MP42MetadataKeyAppleTVRatingSystem =
    @"Apple TV Rating System";

NSString *const MP42MetadataKeyAppleTVRatingSystemType =
    @"Apple TV Rating System Type";

NSString *const MP42MetadataKeyAppleTVRatingValue =
    @"Apple TV Rating Value";

NSString *const MP42MetadataKeyAppleTVEpisodeIndex =
    @"Apple TV Episode Index";

NSString *const MP42MetadataKeyAppleTVFractionalEpisodeNumber =
    @"Apple TV Fractional Episode Number";

NSString *const MP42MetadataKeyAppleTVIsFirstEpisode =
    @"Apple TV Is First Episode";

NSString *const MP42MetadataKeyAppleTVSeasonAdamID =
    @"Apple TV Season Adam ID";

NSString *const MP42MetadataKeyAppleTVSeasonCanonicalID =
    @"Apple TV Season Canonical ID";

NSString *const MP42MetadataKeyAppleTVVersion =
    @"Apple TV Version";

NSString *const MP42MetadataKeyAppleTVIsEntitledToPlay =
    @"Apple TV Entitled to Play";

NSString *const MP42MetadataKeyAppleTVRoles =
    @"Apple TV Roles";

NSString *const MP42MetadataKeyCreator =
    @"Creator";
