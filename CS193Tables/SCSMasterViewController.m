//
//  SCSMasterViewController.m
//  CS193Tables
//
//  Created by Richard E Millet on 2/28/13.
//  Copyright (c) 2013 Richard Millet. All rights reserved.
//

#import "SCSMasterViewController.h"
#import "SCSDetailViewController.h"
#import "SCSLectureInfoCell.h"
#import "SCSLecture.h"
#import "SCSLectureList.h"

@interface SCSMasterViewController ()<UITableViewDataSource, UITableViewDelegate> {
    NSMutableArray *_objects;
}
@property (strong, nonatomic) SCSLectureList *lectureList;
@end

@implementation SCSMasterViewController

- (void)awakeFromNib
{
    [super awakeFromNib];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	self.navigationItem.leftBarButtonItem = self.editButtonItem;

	UIBarButtonItem *addButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(insertNewObject:)];
	self.navigationItem.rightBarButtonItem = addButton;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)insertNewObject:(id)sender
{
    if (!_objects) {
        _objects = [[NSMutableArray alloc] init];
    }
    [_objects insertObject:[NSDate date] atIndex:0];
    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:0 inSection:0];
    [self.tableView insertRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
}

#pragma mark - Table View

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        [_objects removeObjectAtIndex:indexPath.row];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view.
    }
}

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"showDetail"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        NSDate *object = _objects[indexPath.row];
        [[segue destinationViewController] setDetailItem:object];
    }
}

#pragma mark - UITableViewDataSource

- (SCSLectureList *)lectureList {
	if (_lectureList == nil) {
		_lectureList = [[SCSLectureList alloc] init];
	}
	return _lectureList;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    SCSLectureInfoCell *cell = [tableView dequeueReusableCellWithIdentifier:@"LectureCell" forIndexPath:indexPath];
	
	SCSLecture *theLecture = self.lectureList[indexPath.row];
	NSInteger lectureNumber = theLecture.lectureNumber;
	cell.lectureNumberLabel.text = [NSString stringWithFormat:@"Lecture %d", lectureNumber];
	cell.lectureTitleLabel.text = theLecture.lectureTitle;
    return cell;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
	return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
	return [self.lectureList count];
}

#pragma mark - UITableViewDelegate


@end
