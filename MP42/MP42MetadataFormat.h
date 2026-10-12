//
//  MP42MetadataFormat.h
//  MP42Foundation
//
//  Created by Damiano Galassi on 07/10/2016.
//  Copyright © 2022 Damiano Galassi. All rights reserved.
//

#import <Foundation/Foundation.h>

NSString *localizedMetadataKeyName(NSString *key);

// Common Metadata keys
extern NSString *const MP42MetadataKeyName;                     // String
extern NSString *const MP42MetadataKeyTrackSubTitle;            // String

extern NSString *const MP42MetadataKeyAlbum;                    // String
extern NSString *const MP42MetadataKeyAlbumArtist;              // String
extern NSString *const MP42MetadataKeyArtist;                   // String

extern NSString *const MP42MetadataKeyGrouping;                 // String
extern NSString *const MP42MetadataKeyUserComment;              // String
extern NSString *const MP42MetadataKeyUserGenre;                // String
extern NSString *const MP42MetadataKeyReleaseDate;              // Date
extern NSString *const MP42MetadataKeyDuration;                 // Int/String

extern NSString *const MP42MetadataKeyTrackNumber;              // Array<Int>
extern NSString *const MP42MetadataKeyDiscNumber;               // Array<Int>
extern NSString *const MP42MetadataKeyBeatsPerMin;              // Int

extern NSString *const MP42MetadataKeyKeywords;                 // String
extern NSString *const MP42MetadataKeyCategory;                 // String
extern NSString *const MP42MetadataKeyCredits;                  // String
extern NSString *const MP42MetadataKeyThanks;                   // String
extern NSString *const MP42MetadataKeyCopyright;                // String

extern NSString *const MP42MetadataKeyDescription;              // String
extern NSString *const MP42MetadataKeyLongDescription;          // String
extern NSString *const MP42MetadataKeySeriesDescription;        // String
extern NSString *const MP42MetadataKeySongDescription;          // String

extern NSString *const MP42MetadataKeyRating;                   // String
extern NSString *const MP42MetadataKeyRatingAnnotation;         // String
extern NSString *const MP42MetadataKeyContentRating;            // Int

extern NSString *const MP42MetadataKeyCoverArt;                 // MP42Image
extern NSString *const MP42MetadataKeyMediaKind;                // Int
extern NSString *const MP42MetadataKeyGapless;                  // Bool
extern NSString *const MP42MetadataKeyHDVideo;                  // Int
extern NSString *const MP42MetadataKeyiTunesU;                  // Bool
extern NSString *const MP42MetadataKeyPodcast;                  // Bool

// Encoding Metadata keys
extern NSString *const MP42MetadataKeyEncodedBy;                // String
extern NSString *const MP42MetadataKeyEncodingTool;             // String

// Movie and TV Show Specific keys
extern NSString *const MP42MetadataKeyStudio;                   // String
extern NSString *const MP42MetadataKeyCast;                     // Array<String>
extern NSString *const MP42MetadataKeyDirector;                 // Array<String>
extern NSString *const MP42MetadataKeyCodirector;               // Array<String>
extern NSString *const MP42MetadataKeyProducer;                 // Array<String>
extern NSString *const MP42MetadataKeyExecProducer;             // String
extern NSString *const MP42MetadataKeyScreenwriters;            // Array<String>

// TV Show Specific Metadata keys
extern NSString *const MP42MetadataKeyTVShow;                   // String
extern NSString *const MP42MetadataKeyTVEpisodeNumber;          // Int
extern NSString *const MP42MetadataKeyTVNetwork;                // String
extern NSString *const MP42MetadataKeyTVEpisodeID;              // String
extern NSString *const MP42MetadataKeyTVSeason;                 // Int

// Songs Specific Metadata Keys
extern NSString *const MP42MetadataKeyArtDirector;              // String
extern NSString *const MP42MetadataKeyComposer;                 // String
extern NSString *const MP42MetadataKeyArranger;                 // String
extern NSString *const MP42MetadataKeyAuthor;                   // String
extern NSString *const MP42MetadataKeyLyrics;                   // String
extern NSString *const MP42MetadataKeyAcknowledgement;          // String
extern NSString *const MP42MetadataKeyConductor;                // String
extern NSString *const MP42MetadataKeyLinerNotes;               // String
extern NSString *const MP42MetadataKeyRecordCompany;            // String
extern NSString *const MP42MetadataKeyOriginalArtist;           // String
extern NSString *const MP42MetadataKeyPhonogramRights;          // String
extern NSString *const MP42MetadataKeySongProducer;             // String
extern NSString *const MP42MetadataKeyPerformer;                // String
extern NSString *const MP42MetadataKeyPublisher;                // String
extern NSString *const MP42MetadataKeySoundEngineer;            // String
extern NSString *const MP42MetadataKeySoloist;                  // String
extern NSString *const MP42MetadataKeyDiscCompilation;          // Int

// Classic Music Specific Metadata Keys
extern NSString *const MP42MetadataKeyWorkName;                 // String
extern NSString *const MP42MetadataKeyMovementName;             // String
extern NSString *const MP42MetadataKeyMovementNumber;           // Int
extern NSString *const MP42MetadataKeyMovementCount;            // Int
extern NSString *const MP42MetadataKeyShowWorkAndMovement;      // Bool

// iTunes Store Metadata keys
extern NSString *const MP42MetadataKeyXID;                      // String
extern NSString *const MP42MetadataKeyArtistID;                 // Int
extern NSString *const MP42MetadataKeyComposerID;               // Int
extern NSString *const MP42MetadataKeyContentID;                // Int
extern NSString *const MP42MetadataKeyGenreID;                  // Int
extern NSString *const MP42MetadataKeyPlaylistID;               // Int
extern NSString *const MP42MetadataKeyAppleID;                  // String
extern NSString *const MP42MetadataKeyAccountKind;              // Int
extern NSString *const MP42MetadataKeyAccountCountry;           // Int
extern NSString *const MP42MetadataKeyPurchasedDate;            // Date
extern NSString *const MP42MetadataKeyOnlineExtras;             // String

// Sort Metadata keys
extern NSString *const MP42MetadataKeySortName;                 // String
extern NSString *const MP42MetadataKeySortArtist;               // String
extern NSString *const MP42MetadataKeySortAlbumArtist;          // String
extern NSString *const MP42MetadataKeySortAlbum;                // String
extern NSString *const MP42MetadataKeySortComposer;             // String
extern NSString *const MP42MetadataKeySortTVShow;               // String

// Unofficial Metadata keys for Audiobooks
extern NSString *const MP42MetadataKeyUnofficialSubtitle;       // String
extern NSString *const MP42MetadataKeyUnofficialLanguage;       // String
extern NSString *const MP42MetadataKeyUnofficialASIN;           // String
extern NSString *const MP42MetadataKeyUnofficialAbridged;       // Bool

// TMDb Extended Metadata keys
extern NSString *const MP42MetadataKeyTMDbContentID;            // String

// Prime Video Extended Metadata keys
extern NSString *const MP42MetadataKeyPrimeVideoContentID;      // String
extern NSString *const MP42MetadataKeyPrimeVideoContentURL;     // String

// VMX Extended Metadata keys
extern NSString *const MP42MetadataKeyService;                  // String
extern NSString *const MP42MetadataKeyVMXContentID;             // String
extern NSString *const MP42MetadataKeyVMXContentURL; // String

// Wavve Extended Metadata keys
extern NSString *const MP42MetadataKeyWavveMovieID;             // String
extern NSString *const MP42MetadataKeyWavveShowID;              // String
extern NSString *const MP42MetadataKeyWavveEpisodeID;           // String
extern NSString *const MP42MetadataKeyWavveContentURL;          // String

// Paramount+ Extended Metadata keys
extern NSString *const MP42MetadataKeyParamountPlusMovieID; // String
extern NSString *const MP42MetadataKeyParamountPlusEpisodeID; // String
extern NSString *const MP42MetadataKeyParamountPlusContentURL; // String

// Netflix Extended Metadata keys
extern NSString *const MP42MetadataKeyNetflixMovieID;            // String
extern NSString *const MP42MetadataKeyNetflixShowID;             // String
extern NSString *const MP42MetadataKeyNetflixEpisodeID;          // String
extern NSString *const MP42MetadataKeyNetflixContentURL;         // String
extern NSString *const MP42MetadataKeyNetflixRating;             // String
extern NSString *const MP42MetadataKeyNetflixRatingDescription;  // String
extern NSString *const MP42MetadataKeyNetflixContentAdvisories;  // String
extern NSString *const MP42MetadataKeyNetflixGenre;              // String

// CATCHPLAY+ Extended Metadata keys
extern NSString *const MP42MetadataKeyCatchplayMovieID;
extern NSString *const MP42MetadataKeyCatchplayShowID;
extern NSString *const MP42MetadataKeyCatchplayEpisodeID;
extern NSString *const MP42MetadataKeyCatchplayContentURL;
extern NSString *const MP42MetadataKeyCatchplayContentAdvisories;

// Vidio Extended Metadata keys
extern NSString *const MP42MetadataKeyVidioGenre;              // String
extern NSString *const MP42MetadataKeyVidioRating;             // String
extern NSString *const MP42MetadataKeyVidioContentURL;         // String
extern NSString *const MP42MetadataKeyVidioMovieID;            // String
extern NSString *const MP42MetadataKeyVidioShowID;             // String
extern NSString *const MP42MetadataKeyVidioEpisodeID;          // String

// FANZA Extended Metadata keys
extern NSString *const MP42MetadataKeyFANZAContentID;          // String
extern NSString *const MP42MetadataKeyFANZAProductID;          // String
extern NSString *const MP42MetadataKeyFANZAContentURL;         // String

// DMM Extended Metadata keys
extern NSString *const MP42MetadataKeyDMMContentID;            // String
extern NSString *const MP42MetadataKeyDMMProductID;            // String
extern NSString *const MP42MetadataKeyDMMContentURL;           // String

// Caribbean Extended Metadata keys
extern NSString *const MP42MetadataKeyCaribbeanContentID;      // String
extern NSString *const MP42MetadataKeyCaribbeanContentURL;     // String

// 1Pondo Extended Metadata keys
extern NSString *const MP42MetadataKey1PondoContentID;         // String
extern NSString *const MP42MetadataKey1PondoContentURL;        // String

// MissAV Extended Metadata keys
extern NSString *const MP42MetadataKeyMissAVContentID;
extern NSString *const MP42MetadataKeyMissAVProductID;
extern NSString *const MP42MetadataKeyMissAVContentURL;

// Japan DVD Extended Metadata keys
extern NSString *const MP42MetadataKeyJapanDVDContentID;
extern NSString *const MP42MetadataKeyJapanDVDProductID;
extern NSString *const MP42MetadataKeyJapanDVDContentURL;

// U-NEXT Extended Metadata keys
extern NSString *const MP42MetadataKeyUNEXTMovieID;             // String
extern NSString *const MP42MetadataKeyUNEXTShowID;              // String
extern NSString *const MP42MetadataKeyUNEXTEpisodeID;           // String
extern NSString *const MP42MetadataKeyUNEXTContentURL;          // String

// Disney+ Extended Metadata keys
extern NSString *const MP42MetadataKeyDisneyPlusMovieID;       // String
extern NSString *const MP42MetadataKeyDisneyPlusShowID;        // String
extern NSString *const MP42MetadataKeyDisneyPlusEpisodeID;     // String
extern NSString *const MP42MetadataKeyDisneyPlusContentURL;    // String

// Apple Music Extended Metadata keys
extern NSString *const MP42MetadataKeyAppleMusicContentID;      // String
extern NSString *const MP42MetadataKeyAppleMusicArtistID;       // String
extern NSString *const MP42MetadataKeyAppleMusicAlbumID;        // String
extern NSString *const MP42MetadataKeyAppleMusicURL;            // String
extern NSString *const MP42MetadataKeyAppleMusicISRC;           // String

// Apple TV Extended Metadata keys
extern NSString *const MP42MetadataKeyAppleTVContentID;         // String
extern NSString *const MP42MetadataKeyAppleTVShowID;            // String
extern NSString *const MP42MetadataKeyAppleTVSeasonID;          // String
extern NSString *const MP42MetadataKeyAppleTVEpisodeID;         // String

extern NSString *const MP42MetadataKeyAppleTVContentURL;        // String
extern NSString *const MP42MetadataKeyAppleTVShowURL;           // String
extern NSString *const MP42MetadataKeyAppleTVSeasonURL;         // String

extern NSString *const MP42MetadataKeyAppleGenreID;             // String

extern NSString *const MP42MetadataKeyCountryOfOrigin;          // String
extern NSString *const MP42MetadataKeyOriginalSpokenLanguage;   // String

extern NSString *const MP42MetadataKeyRecommendedAge;           // Int/String
extern NSString *const MP42MetadataKeyContentAdvisories;        // String
extern NSString *const MP42MetadataKeyCommonSenseSummary;       // String
extern NSString *const MP42MetadataKeyCommonSenseContentInfo;   // String

extern NSString *const MP42MetadataKeyAppleTVRatingName;        // String
extern NSString *const MP42MetadataKeyAppleTVRatingSystem;      // String
extern NSString *const MP42MetadataKeyAppleTVRatingSystemType;  // String
extern NSString *const MP42MetadataKeyAppleTVRatingValue;       // Int/String

extern NSString *const MP42MetadataKeyAppleTVEpisodeIndex;      // Int/String
extern NSString *const MP42MetadataKeyAppleTVFractionalEpisodeNumber; // Float/String
extern NSString *const MP42MetadataKeyAppleTVIsFirstEpisode;    // String

extern NSString *const MP42MetadataKeyAppleTVSeasonAdamID;      // String
extern NSString *const MP42MetadataKeyAppleTVSeasonCanonicalID; // String

extern NSString *const MP42MetadataKeyAppleTVVersion;           // String
extern NSString *const MP42MetadataKeyAppleTVIsEntitledToPlay;  // String
extern NSString *const MP42MetadataKeyAppleTVRoles;             // JSON String

extern NSString *const MP42MetadataKeyCreator;                  // String
