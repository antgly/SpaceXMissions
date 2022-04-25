import XCTest
@testable import SpaceXMissionTracker

class SpaceXMissionTrackerTests: XCTestCase {
    var viewModel: MissionsListViewModelImpl!
    
    func testWhenMissionsListByRocketNameSortIsPassedToServiceThatItIsMappedToRocketName() {
        //given
        let asyncExpectation = expectation(description: "Service call finishes")
        let mockMissionListService = MockMissionListService()
        viewModel = MissionsListViewModelImpl(missionListService: mockMissionListService)
        
        //when
        viewModel.listOfSpaceXMissions(sort: .byRocketName) { _ in
            asyncExpectation.fulfill()
        }
        
        //then
        waitForExpectations(timeout: 1000)
        XCTAssertEqual(mockMissionListService.savedSort, MissionListServiceSortOptions.rocketName)
    }
    
    func testWhenMissionsListYearSortIsPassedToServiceThatItIsMappedToYear() {
        //given
        let asyncExpectation = expectation(description: "Service call finishes")
        let mockMissionListService = MockMissionListService()
        viewModel = MissionsListViewModelImpl(missionListService: mockMissionListService)
        
        //when
        viewModel.listOfSpaceXMissions(sort: .byYear) { _ in
            asyncExpectation.fulfill()
        }
        
        //then
        waitForExpectations(timeout: 1000)
        XCTAssertEqual(mockMissionListService.savedSort, MissionListServiceSortOptions.year)
    }
    override func tearDownWithError() throws {
        viewModel = nil
    }
}

class MockMissionListService: MissionListService {
    var savedSort: MissionListServiceSortOptions!
    func fetchMissions(filter: MissionListServiceFilterOptions, sort: MissionListServiceSortOptions, limit: UInt, completion: @escaping (Response<MissionsResponse>) -> Void) {
        savedSort = sort
        completion(.Data(MissionsResponse(missions: [])))
    }
}
