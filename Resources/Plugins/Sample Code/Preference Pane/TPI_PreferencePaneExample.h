
#import "TextualApplication.h"

@interface TPI_PreferencePaneExample : NSObject <THOPluginProtocol>
@property (nonatomic, strong) IBOutlet NSView *ourView;

- (IBAction)preferenceChanged:(id)sender;

- (NSView *)pluginPreferencesPaneView;
- (NSString *)pluginPreferencesPaneMenuItemName;
@end
