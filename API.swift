//  This file was automatically generated and should not be edited.

import Apollo

public struct LiveScoreDataInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(beers: Optional<Int?> = nil, extraStrokes: Optional<Int?> = nil, hole: Optional<Int?> = nil, index: Optional<Int?> = nil, par: Optional<Int?> = nil, playerIds: Optional<[Int]?> = nil, points: Optional<Int?> = nil, putts: Optional<Int?> = nil, strokes: Optional<Int?> = nil) {
    graphQLMap = ["beers": beers, "extraStrokes": extraStrokes, "hole": hole, "index": index, "par": par, "playerIds": playerIds, "points": points, "putts": putts, "strokes": strokes]
  }

  public var beers: Optional<Int?> {
    get {
      return graphQLMap["beers"] as! Optional<Int?>
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "beers")
    }
  }

  public var extraStrokes: Optional<Int?> {
    get {
      return graphQLMap["extraStrokes"] as! Optional<Int?>
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "extraStrokes")
    }
  }

  public var hole: Optional<Int?> {
    get {
      return graphQLMap["hole"] as! Optional<Int?>
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "hole")
    }
  }

  public var index: Optional<Int?> {
    get {
      return graphQLMap["index"] as! Optional<Int?>
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "index")
    }
  }

  public var par: Optional<Int?> {
    get {
      return graphQLMap["par"] as! Optional<Int?>
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "par")
    }
  }

  public var playerIds: Optional<[Int]?> {
    get {
      return graphQLMap["playerIds"] as! Optional<[Int]?>
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "playerIds")
    }
  }

  public var points: Optional<Int?> {
    get {
      return graphQLMap["points"] as! Optional<Int?>
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "points")
    }
  }

  public var putts: Optional<Int?> {
    get {
      return graphQLMap["putts"] as! Optional<Int?>
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "putts")
    }
  }

  public var strokes: Optional<Int?> {
    get {
      return graphQLMap["strokes"] as! Optional<Int?>
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "strokes")
    }
  }
}

public struct ScoringItemInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(extraStrokes: Int, userIds: [GraphQLID]) {
    graphQLMap = ["extraStrokes": extraStrokes, "userIds": userIds]
  }

  public var extraStrokes: Int {
    get {
      return graphQLMap["extraStrokes"] as! Int
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "extraStrokes")
    }
  }

  public var userIds: [GraphQLID] {
    get {
      return graphQLMap["userIds"] as! [GraphQLID]
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "userIds")
    }
  }
}

public final class CancelRoundMutationMutation: GraphQLMutation {
  public static let operationString =
    "mutation cancelRoundMutation($scoringSessionId: ID!) {\n  deleteScoringSession(scoringSessionId: $scoringSessionId) {\n    __typename\n    id\n  }\n}"

  public var scoringSessionId: GraphQLID

  public init(scoringSessionId: GraphQLID) {
    self.scoringSessionId = scoringSessionId
  }

  public var variables: GraphQLMap? {
    return ["scoringSessionId": scoringSessionId]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("deleteScoringSession", arguments: ["scoringSessionId": GraphQLVariable("scoringSessionId")], type: .object(DeleteScoringSession.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(deleteScoringSession: DeleteScoringSession? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "deleteScoringSession": deleteScoringSession.flatMap { $0.snapshot }])
    }

    public var deleteScoringSession: DeleteScoringSession? {
      get {
        return (snapshot["deleteScoringSession"] as? Snapshot).flatMap { DeleteScoringSession(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "deleteScoringSession")
      }
    }

    public struct DeleteScoringSession: GraphQLSelectionSet {
      public static let possibleTypes = ["ScoringSession"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID) {
        self.init(snapshot: ["__typename": "ScoringSession", "id": id])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      /// id of the season
      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }
    }
  }
}

public final class CreateLiveScoreMutation: GraphQLMutation {
  public static let operationString =
    "mutation createLiveScore($scoringSessionId: ID!, $userId: ID, $teamIndex: Int, $data: LiveScoreDataInput!) {\n  createLiveScore(scoringSessionId: $scoringSessionId, userId: $userId, teamIndex: $teamIndex, data: $data) {\n    __typename\n    id\n    beers\n    extraStrokes\n    hole\n    index\n    par\n    playerIds\n    points\n    putts\n    strokes\n    user {\n      __typename\n      id\n    }\n    teamIndex\n  }\n}"

  public var scoringSessionId: GraphQLID
  public var userId: GraphQLID?
  public var teamIndex: Int?
  public var data: LiveScoreDataInput

  public init(scoringSessionId: GraphQLID, userId: GraphQLID? = nil, teamIndex: Int? = nil, data: LiveScoreDataInput) {
    self.scoringSessionId = scoringSessionId
    self.userId = userId
    self.teamIndex = teamIndex
    self.data = data
  }

  public var variables: GraphQLMap? {
    return ["scoringSessionId": scoringSessionId, "userId": userId, "teamIndex": teamIndex, "data": data]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("createLiveScore", arguments: ["scoringSessionId": GraphQLVariable("scoringSessionId"), "userId": GraphQLVariable("userId"), "teamIndex": GraphQLVariable("teamIndex"), "data": GraphQLVariable("data")], type: .object(CreateLiveScore.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(createLiveScore: CreateLiveScore? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "createLiveScore": createLiveScore.flatMap { $0.snapshot }])
    }

    public var createLiveScore: CreateLiveScore? {
      get {
        return (snapshot["createLiveScore"] as? Snapshot).flatMap { CreateLiveScore(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "createLiveScore")
      }
    }

    public struct CreateLiveScore: GraphQLSelectionSet {
      public static let possibleTypes = ["LiveScore"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("beers", type: .scalar(Int.self)),
        GraphQLField("extraStrokes", type: .scalar(Int.self)),
        GraphQLField("hole", type: .scalar(Int.self)),
        GraphQLField("index", type: .scalar(Int.self)),
        GraphQLField("par", type: .scalar(Int.self)),
        GraphQLField("playerIds", type: .list(.nonNull(.scalar(Int.self)))),
        GraphQLField("points", type: .scalar(Int.self)),
        GraphQLField("putts", type: .scalar(Int.self)),
        GraphQLField("strokes", type: .scalar(Int.self)),
        GraphQLField("user", type: .object(User.selections)),
        GraphQLField("teamIndex", type: .scalar(Int.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, beers: Int? = nil, extraStrokes: Int? = nil, hole: Int? = nil, index: Int? = nil, par: Int? = nil, playerIds: [Int]? = nil, points: Int? = nil, putts: Int? = nil, strokes: Int? = nil, user: User? = nil, teamIndex: Int? = nil) {
        self.init(snapshot: ["__typename": "LiveScore", "id": id, "beers": beers, "extraStrokes": extraStrokes, "hole": hole, "index": index, "par": par, "playerIds": playerIds, "points": points, "putts": putts, "strokes": strokes, "user": user.flatMap { $0.snapshot }, "teamIndex": teamIndex])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      /// id of the score
      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var beers: Int? {
        get {
          return snapshot["beers"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "beers")
        }
      }

      public var extraStrokes: Int? {
        get {
          return snapshot["extraStrokes"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "extraStrokes")
        }
      }

      public var hole: Int? {
        get {
          return snapshot["hole"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "hole")
        }
      }

      public var index: Int? {
        get {
          return snapshot["index"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "index")
        }
      }

      public var par: Int? {
        get {
          return snapshot["par"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "par")
        }
      }

      public var playerIds: [Int]? {
        get {
          return snapshot["playerIds"] as? [Int]
        }
        set {
          snapshot.updateValue(newValue, forKey: "playerIds")
        }
      }

      public var points: Int? {
        get {
          return snapshot["points"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "points")
        }
      }

      public var putts: Int? {
        get {
          return snapshot["putts"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "putts")
        }
      }

      public var strokes: Int? {
        get {
          return snapshot["strokes"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "strokes")
        }
      }

      public var user: User? {
        get {
          return (snapshot["user"] as? Snapshot).flatMap { User(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "user")
        }
      }

      public var teamIndex: Int? {
        get {
          return snapshot["teamIndex"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "teamIndex")
        }
      }

      public struct User: GraphQLSelectionSet {
        public static let possibleTypes = ["User"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID) {
          self.init(snapshot: ["__typename": "User", "id": id])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        /// ID
        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }
      }
    }
  }
}

public final class CreateScoringSessionMutation: GraphQLMutation {
  public static let operationString =
    "mutation createScoringSession($courseId: ID!, $scorerId: ID!, $teamEvent: Boolean!, $scoringType: String!, $scoringItems: [ScoringItemInput!], $startsAt: String!) {\n  createScoringSession(courseId: $courseId, scorerId: $scorerId, teamEvent: $teamEvent, scoringType: $scoringType, scoringItems: $scoringItems, startsAt: $startsAt, currentHole: 1) {\n    __typename\n    id\n    course {\n      __typename\n      id\n      club\n      name\n    }\n    scoringType\n    teamEvent\n  }\n}"

  public var courseId: GraphQLID
  public var scorerId: GraphQLID
  public var teamEvent: Bool
  public var scoringType: String
  public var scoringItems: [ScoringItemInput]?
  public var startsAt: String

  public init(courseId: GraphQLID, scorerId: GraphQLID, teamEvent: Bool, scoringType: String, scoringItems: [ScoringItemInput]?, startsAt: String) {
    self.courseId = courseId
    self.scorerId = scorerId
    self.teamEvent = teamEvent
    self.scoringType = scoringType
    self.scoringItems = scoringItems
    self.startsAt = startsAt
  }

  public var variables: GraphQLMap? {
    return ["courseId": courseId, "scorerId": scorerId, "teamEvent": teamEvent, "scoringType": scoringType, "scoringItems": scoringItems, "startsAt": startsAt]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("createScoringSession", arguments: ["courseId": GraphQLVariable("courseId"), "scorerId": GraphQLVariable("scorerId"), "teamEvent": GraphQLVariable("teamEvent"), "scoringType": GraphQLVariable("scoringType"), "scoringItems": GraphQLVariable("scoringItems"), "startsAt": GraphQLVariable("startsAt"), "currentHole": 1], type: .object(CreateScoringSession.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(createScoringSession: CreateScoringSession? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "createScoringSession": createScoringSession.flatMap { $0.snapshot }])
    }

    public var createScoringSession: CreateScoringSession? {
      get {
        return (snapshot["createScoringSession"] as? Snapshot).flatMap { CreateScoringSession(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "createScoringSession")
      }
    }

    public struct CreateScoringSession: GraphQLSelectionSet {
      public static let possibleTypes = ["ScoringSession"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("course", type: .nonNull(.object(Course.selections))),
        GraphQLField("scoringType", type: .nonNull(.scalar(String.self))),
        GraphQLField("teamEvent", type: .nonNull(.scalar(Bool.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, course: Course, scoringType: String, teamEvent: Bool) {
        self.init(snapshot: ["__typename": "ScoringSession", "id": id, "course": course.snapshot, "scoringType": scoringType, "teamEvent": teamEvent])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      /// id of the season
      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var course: Course {
        get {
          return Course(snapshot: snapshot["course"]! as! Snapshot)
        }
        set {
          snapshot.updateValue(newValue.snapshot, forKey: "course")
        }
      }

      public var scoringType: String {
        get {
          return snapshot["scoringType"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "scoringType")
        }
      }

      public var teamEvent: Bool {
        get {
          return snapshot["teamEvent"]! as! Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "teamEvent")
        }
      }

      public struct Course: GraphQLSelectionSet {
        public static let possibleTypes = ["Course"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("club", type: .nonNull(.scalar(String.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, club: String, name: String) {
          self.init(snapshot: ["__typename": "Course", "id": id, "club": club, "name": name])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var club: String {
          get {
            return snapshot["club"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "club")
          }
        }

        public var name: String {
          get {
            return snapshot["name"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }
      }
    }
  }
}

public final class AuthenticateUserMutation: GraphQLMutation {
  public static let operationString =
    "mutation authenticateUser($email: String!, $password: String!) {\n  authenticateUser(email: $email, password: $password) {\n    __typename\n    user {\n      __typename\n      id\n      email\n      firstName\n      lastName\n      photo\n      admin\n    }\n    token\n  }\n}"

  public var email: String
  public var password: String

  public init(email: String, password: String) {
    self.email = email
    self.password = password
  }

  public var variables: GraphQLMap? {
    return ["email": email, "password": password]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("authenticateUser", arguments: ["email": GraphQLVariable("email"), "password": GraphQLVariable("password")], type: .object(AuthenticateUser.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(authenticateUser: AuthenticateUser? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "authenticateUser": authenticateUser.flatMap { $0.snapshot }])
    }

    public var authenticateUser: AuthenticateUser? {
      get {
        return (snapshot["authenticateUser"] as? Snapshot).flatMap { AuthenticateUser(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "authenticateUser")
      }
    }

    public struct AuthenticateUser: GraphQLSelectionSet {
      public static let possibleTypes = ["SigninPayload"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("user", type: .object(User.selections)),
        GraphQLField("token", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(user: User? = nil, token: String? = nil) {
        self.init(snapshot: ["__typename": "SigninPayload", "user": user.flatMap { $0.snapshot }, "token": token])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var user: User? {
        get {
          return (snapshot["user"] as? Snapshot).flatMap { User(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "user")
        }
      }

      public var token: String? {
        get {
          return snapshot["token"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "token")
        }
      }

      public struct User: GraphQLSelectionSet {
        public static let possibleTypes = ["User"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("email", type: .nonNull(.scalar(String.self))),
          GraphQLField("firstName", type: .nonNull(.scalar(String.self))),
          GraphQLField("lastName", type: .nonNull(.scalar(String.self))),
          GraphQLField("photo", type: .scalar(String.self)),
          GraphQLField("admin", type: .nonNull(.scalar(Bool.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, email: String, firstName: String, lastName: String, photo: String? = nil, admin: Bool) {
          self.init(snapshot: ["__typename": "User", "id": id, "email": email, "firstName": firstName, "lastName": lastName, "photo": photo, "admin": admin])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        /// ID
        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        /// The email of this user
        public var email: String {
          get {
            return snapshot["email"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "email")
          }
        }

        public var firstName: String {
          get {
            return snapshot["firstName"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "firstName")
          }
        }

        public var lastName: String {
          get {
            return snapshot["lastName"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "lastName")
          }
        }

        /// The url to the photo of this user
        public var photo: String? {
          get {
            return snapshot["photo"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "photo")
          }
        }

        public var admin: Bool {
          get {
            return snapshot["admin"]! as! Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "admin")
          }
        }
      }
    }
  }
}

public final class UpdateLiveScoreMutation: GraphQLMutation {
  public static let operationString =
    "mutation updateLiveScore($id: ID!, $data: LiveScoreDataInput!) {\n  updateLiveScore(id: $id, data: $data) {\n    __typename\n    id\n    extraStrokes\n    strokes\n    putts\n    points\n    beers\n  }\n}"

  public var id: GraphQLID
  public var data: LiveScoreDataInput

  public init(id: GraphQLID, data: LiveScoreDataInput) {
    self.id = id
    self.data = data
  }

  public var variables: GraphQLMap? {
    return ["id": id, "data": data]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updateLiveScore", arguments: ["id": GraphQLVariable("id"), "data": GraphQLVariable("data")], type: .object(UpdateLiveScore.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(updateLiveScore: UpdateLiveScore? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "updateLiveScore": updateLiveScore.flatMap { $0.snapshot }])
    }

    public var updateLiveScore: UpdateLiveScore? {
      get {
        return (snapshot["updateLiveScore"] as? Snapshot).flatMap { UpdateLiveScore(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "updateLiveScore")
      }
    }

    public struct UpdateLiveScore: GraphQLSelectionSet {
      public static let possibleTypes = ["LiveScore"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("extraStrokes", type: .scalar(Int.self)),
        GraphQLField("strokes", type: .scalar(Int.self)),
        GraphQLField("putts", type: .scalar(Int.self)),
        GraphQLField("points", type: .scalar(Int.self)),
        GraphQLField("beers", type: .scalar(Int.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, extraStrokes: Int? = nil, strokes: Int? = nil, putts: Int? = nil, points: Int? = nil, beers: Int? = nil) {
        self.init(snapshot: ["__typename": "LiveScore", "id": id, "extraStrokes": extraStrokes, "strokes": strokes, "putts": putts, "points": points, "beers": beers])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      /// id of the score
      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var extraStrokes: Int? {
        get {
          return snapshot["extraStrokes"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "extraStrokes")
        }
      }

      public var strokes: Int? {
        get {
          return snapshot["strokes"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "strokes")
        }
      }

      public var putts: Int? {
        get {
          return snapshot["putts"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "putts")
        }
      }

      public var points: Int? {
        get {
          return snapshot["points"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "points")
        }
      }

      public var beers: Int? {
        get {
          return snapshot["beers"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "beers")
        }
      }
    }
  }
}

public final class ActiveScoringSessionQueryQuery: GraphQLQuery {
  public static let operationString =
    "query activeScoringSessionQuery {\n  activeScoringSession {\n    __typename\n    id\n    scoringType\n    teamEvent\n    course {\n      __typename\n      id\n      club\n      name\n    }\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("activeScoringSession", type: .object(ActiveScoringSession.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(activeScoringSession: ActiveScoringSession? = nil) {
      self.init(snapshot: ["__typename": "Query", "activeScoringSession": activeScoringSession.flatMap { $0.snapshot }])
    }

    public var activeScoringSession: ActiveScoringSession? {
      get {
        return (snapshot["activeScoringSession"] as? Snapshot).flatMap { ActiveScoringSession(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "activeScoringSession")
      }
    }

    public struct ActiveScoringSession: GraphQLSelectionSet {
      public static let possibleTypes = ["ScoringSession"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("scoringType", type: .nonNull(.scalar(String.self))),
        GraphQLField("teamEvent", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("course", type: .nonNull(.object(Course.selections))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, scoringType: String, teamEvent: Bool, course: Course) {
        self.init(snapshot: ["__typename": "ScoringSession", "id": id, "scoringType": scoringType, "teamEvent": teamEvent, "course": course.snapshot])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      /// id of the season
      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var scoringType: String {
        get {
          return snapshot["scoringType"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "scoringType")
        }
      }

      public var teamEvent: Bool {
        get {
          return snapshot["teamEvent"]! as! Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "teamEvent")
        }
      }

      public var course: Course {
        get {
          return Course(snapshot: snapshot["course"]! as! Snapshot)
        }
        set {
          snapshot.updateValue(newValue.snapshot, forKey: "course")
        }
      }

      public struct Course: GraphQLSelectionSet {
        public static let possibleTypes = ["Course"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("club", type: .nonNull(.scalar(String.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, club: String, name: String) {
          self.init(snapshot: ["__typename": "Course", "id": id, "club": club, "name": name])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var club: String {
          get {
            return snapshot["club"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "club")
          }
        }

        public var name: String {
          get {
            return snapshot["name"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }
      }
    }
  }
}

public final class CoursesQueryQuery: GraphQLQuery {
  public static let operationString =
    "query coursesQuery {\n  courses {\n    __typename\n    id\n    club\n    name\n    par\n    holeCount\n    eventCount\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("courses", type: .nonNull(.list(.object(Course.selections)))),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(courses: [Course?]) {
      self.init(snapshot: ["__typename": "Query", "courses": courses.map { $0.flatMap { $0.snapshot } }])
    }

    /// A lot of courses and their data
    public var courses: [Course?] {
      get {
        return (snapshot["courses"] as! [Snapshot?]).map { $0.flatMap { Course(snapshot: $0) } }
      }
      set {
        snapshot.updateValue(newValue.map { $0.flatMap { $0.snapshot } }, forKey: "courses")
      }
    }

    public struct Course: GraphQLSelectionSet {
      public static let possibleTypes = ["Course"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("club", type: .nonNull(.scalar(String.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("par", type: .nonNull(.scalar(Int.self))),
        GraphQLField("holeCount", type: .nonNull(.scalar(Int.self))),
        GraphQLField("eventCount", type: .nonNull(.scalar(Int.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, club: String, name: String, par: Int, holeCount: Int, eventCount: Int) {
        self.init(snapshot: ["__typename": "Course", "id": id, "club": club, "name": name, "par": par, "holeCount": holeCount, "eventCount": eventCount])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var club: String {
        get {
          return snapshot["club"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "club")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var par: Int {
        get {
          return snapshot["par"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "par")
        }
      }

      public var holeCount: Int {
        get {
          return snapshot["holeCount"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "holeCount")
        }
      }

      public var eventCount: Int {
        get {
          return snapshot["eventCount"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "eventCount")
        }
      }
    }
  }
}

public final class EventQueryQuery: GraphQLQuery {
  public static let operationString =
    "query eventQuery($eventId: ID!, $seasonId: ID!) {\n  players: seasonLeaderboard(seasonId: $seasonId, eventId: $eventId) {\n    __typename\n    id\n    photo\n    name\n    average\n    eventCount\n    topPoints\n    position\n    oldAverage\n    oldTotalPoints\n    prevPosition\n    totalPoints\n    totalKr\n    beers\n  }\n  event(id: $eventId) {\n    __typename\n    id\n    status\n    startsAt\n    scoringType\n    teamEvent\n    course {\n      __typename\n      id\n      club\n      name\n    }\n    leaderboard {\n      __typename\n      id\n      photo\n      name\n      position\n      eventPoints\n      beers\n      kr\n      value\n    }\n  }\n}"

  public var eventId: GraphQLID
  public var seasonId: GraphQLID

  public init(eventId: GraphQLID, seasonId: GraphQLID) {
    self.eventId = eventId
    self.seasonId = seasonId
  }

  public var variables: GraphQLMap? {
    return ["eventId": eventId, "seasonId": seasonId]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("seasonLeaderboard", alias: "players", arguments: ["seasonId": GraphQLVariable("seasonId"), "eventId": GraphQLVariable("eventId")], type: .nonNull(.list(.nonNull(.object(Player.selections))))),
      GraphQLField("event", arguments: ["id": GraphQLVariable("eventId")], type: .nonNull(.object(Event.selections))),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(players: [Player], event: Event) {
      self.init(snapshot: ["__typename": "Query", "players": players.map { $0.snapshot }, "event": event.snapshot])
    }

    /// Leaderboard for a season by seasonID
    public var players: [Player] {
      get {
        return (snapshot["players"] as! [Snapshot]).map { Player(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue.map { $0.snapshot }, forKey: "players")
      }
    }

    public var event: Event {
      get {
        return Event(snapshot: snapshot["event"]! as! Snapshot)
      }
      set {
        snapshot.updateValue(newValue.snapshot, forKey: "event")
      }
    }

    public struct Player: GraphQLSelectionSet {
      public static let possibleTypes = ["LeaderboardUserType"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("photo", type: .scalar(String.self)),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("average", type: .nonNull(.scalar(Double.self))),
        GraphQLField("eventCount", type: .nonNull(.scalar(Int.self))),
        GraphQLField("topPoints", type: .nonNull(.list(.nonNull(.scalar(Int.self))))),
        GraphQLField("position", type: .nonNull(.scalar(Int.self))),
        GraphQLField("oldAverage", type: .scalar(Double.self)),
        GraphQLField("oldTotalPoints", type: .scalar(Int.self)),
        GraphQLField("prevPosition", type: .scalar(Int.self)),
        GraphQLField("totalPoints", type: .scalar(Int.self)),
        GraphQLField("totalKr", type: .nonNull(.scalar(Double.self))),
        GraphQLField("beers", type: .nonNull(.scalar(Int.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, photo: String? = nil, name: String, average: Double, eventCount: Int, topPoints: [Int], position: Int, oldAverage: Double? = nil, oldTotalPoints: Int? = nil, prevPosition: Int? = nil, totalPoints: Int? = nil, totalKr: Double, beers: Int) {
        self.init(snapshot: ["__typename": "LeaderboardUserType", "id": id, "photo": photo, "name": name, "average": average, "eventCount": eventCount, "topPoints": topPoints, "position": position, "oldAverage": oldAverage, "oldTotalPoints": oldTotalPoints, "prevPosition": prevPosition, "totalPoints": totalPoints, "totalKr": totalKr, "beers": beers])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var photo: String? {
        get {
          return snapshot["photo"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "photo")
        }
      }

      /// The name of this user
      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var average: Double {
        get {
          return snapshot["average"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "average")
        }
      }

      public var eventCount: Int {
        get {
          return snapshot["eventCount"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "eventCount")
        }
      }

      public var topPoints: [Int] {
        get {
          return snapshot["topPoints"]! as! [Int]
        }
        set {
          snapshot.updateValue(newValue, forKey: "topPoints")
        }
      }

      /// position
      public var position: Int {
        get {
          return snapshot["position"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "position")
        }
      }

      public var oldAverage: Double? {
        get {
          return snapshot["oldAverage"] as? Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "oldAverage")
        }
      }

      public var oldTotalPoints: Int? {
        get {
          return snapshot["oldTotalPoints"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "oldTotalPoints")
        }
      }

      public var prevPosition: Int? {
        get {
          return snapshot["prevPosition"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "prevPosition")
        }
      }

      public var totalPoints: Int? {
        get {
          return snapshot["totalPoints"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "totalPoints")
        }
      }

      public var totalKr: Double {
        get {
          return snapshot["totalKr"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "totalKr")
        }
      }

      public var beers: Int {
        get {
          return snapshot["beers"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "beers")
        }
      }
    }

    public struct Event: GraphQLSelectionSet {
      public static let possibleTypes = ["Event"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("status", type: .nonNull(.scalar(String.self))),
        GraphQLField("startsAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("scoringType", type: .nonNull(.scalar(String.self))),
        GraphQLField("teamEvent", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("course", type: .nonNull(.object(Course.selections))),
        GraphQLField("leaderboard", type: .nonNull(.list(.nonNull(.object(Leaderboard.selections))))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, status: String, startsAt: String, scoringType: String, teamEvent: Bool, course: Course, leaderboard: [Leaderboard]) {
        self.init(snapshot: ["__typename": "Event", "id": id, "status": status, "startsAt": startsAt, "scoringType": scoringType, "teamEvent": teamEvent, "course": course.snapshot, "leaderboard": leaderboard.map { $0.snapshot }])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      /// id of the event
      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      /// Status of the event
      public var status: String {
        get {
          return snapshot["status"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "status")
        }
      }

      public var startsAt: String {
        get {
          return snapshot["startsAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "startsAt")
        }
      }

      public var scoringType: String {
        get {
          return snapshot["scoringType"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "scoringType")
        }
      }

      public var teamEvent: Bool {
        get {
          return snapshot["teamEvent"]! as! Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "teamEvent")
        }
      }

      /// Course
      public var course: Course {
        get {
          return Course(snapshot: snapshot["course"]! as! Snapshot)
        }
        set {
          snapshot.updateValue(newValue.snapshot, forKey: "course")
        }
      }

      /// Leaderboard
      public var leaderboard: [Leaderboard] {
        get {
          return (snapshot["leaderboard"] as! [Snapshot]).map { Leaderboard(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue.map { $0.snapshot }, forKey: "leaderboard")
        }
      }

      public struct Course: GraphQLSelectionSet {
        public static let possibleTypes = ["Course"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("club", type: .nonNull(.scalar(String.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, club: String, name: String) {
          self.init(snapshot: ["__typename": "Course", "id": id, "club": club, "name": name])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var club: String {
          get {
            return snapshot["club"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "club")
          }
        }

        public var name: String {
          get {
            return snapshot["name"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }
      }

      public struct Leaderboard: GraphQLSelectionSet {
        public static let possibleTypes = ["EventLeaderboardUserType"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("photo", type: .scalar(String.self)),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("position", type: .nonNull(.scalar(Int.self))),
          GraphQLField("eventPoints", type: .nonNull(.scalar(Double.self))),
          GraphQLField("beers", type: .nonNull(.scalar(Int.self))),
          GraphQLField("kr", type: .nonNull(.scalar(Int.self))),
          GraphQLField("value", type: .nonNull(.scalar(Int.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, photo: String? = nil, name: String, position: Int, eventPoints: Double, beers: Int, kr: Int, value: Int) {
          self.init(snapshot: ["__typename": "EventLeaderboardUserType", "id": id, "photo": photo, "name": name, "position": position, "eventPoints": eventPoints, "beers": beers, "kr": kr, "value": value])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var photo: String? {
          get {
            return snapshot["photo"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "photo")
          }
        }

        public var name: String {
          get {
            return snapshot["name"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var position: Int {
          get {
            return snapshot["position"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "position")
          }
        }

        public var eventPoints: Double {
          get {
            return snapshot["eventPoints"]! as! Double
          }
          set {
            snapshot.updateValue(newValue, forKey: "eventPoints")
          }
        }

        public var beers: Int {
          get {
            return snapshot["beers"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "beers")
          }
        }

        public var kr: Int {
          get {
            return snapshot["kr"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "kr")
          }
        }

        public var value: Int {
          get {
            return snapshot["value"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "value")
          }
        }
      }
    }
  }
}

public final class EventsQuery: GraphQLQuery {
  public static let operationString =
    "query events {\n  events {\n    __typename\n    id\n    status\n    startsAt\n    scoringType\n    teamEvent\n    course {\n      __typename\n      id\n      club\n      name\n    }\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("events", type: .nonNull(.list(.nonNull(.object(Event.selections))))),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(events: [Event]) {
      self.init(snapshot: ["__typename": "Query", "events": events.map { $0.snapshot }])
    }

    /// Events by seasonId
    public var events: [Event] {
      get {
        return (snapshot["events"] as! [Snapshot]).map { Event(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue.map { $0.snapshot }, forKey: "events")
      }
    }

    public struct Event: GraphQLSelectionSet {
      public static let possibleTypes = ["Event"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("status", type: .nonNull(.scalar(String.self))),
        GraphQLField("startsAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("scoringType", type: .nonNull(.scalar(String.self))),
        GraphQLField("teamEvent", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("course", type: .nonNull(.object(Course.selections))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, status: String, startsAt: String, scoringType: String, teamEvent: Bool, course: Course) {
        self.init(snapshot: ["__typename": "Event", "id": id, "status": status, "startsAt": startsAt, "scoringType": scoringType, "teamEvent": teamEvent, "course": course.snapshot])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      /// id of the event
      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      /// Status of the event
      public var status: String {
        get {
          return snapshot["status"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "status")
        }
      }

      public var startsAt: String {
        get {
          return snapshot["startsAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "startsAt")
        }
      }

      public var scoringType: String {
        get {
          return snapshot["scoringType"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "scoringType")
        }
      }

      public var teamEvent: Bool {
        get {
          return snapshot["teamEvent"]! as! Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "teamEvent")
        }
      }

      /// Course
      public var course: Course {
        get {
          return Course(snapshot: snapshot["course"]! as! Snapshot)
        }
        set {
          snapshot.updateValue(newValue.snapshot, forKey: "course")
        }
      }

      public struct Course: GraphQLSelectionSet {
        public static let possibleTypes = ["Course"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("club", type: .nonNull(.scalar(String.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, club: String, name: String) {
          self.init(snapshot: ["__typename": "Course", "id": id, "club": club, "name": name])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var club: String {
          get {
            return snapshot["club"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "club")
          }
        }

        public var name: String {
          get {
            return snapshot["name"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }
      }
    }
  }
}

public final class InitialQueryQuery: GraphQLQuery {
  public static let operationString =
    "query initialQuery {\n  activeScoringSession {\n    __typename\n    id\n    scoringType\n    teamEvent\n    course {\n      __typename\n      id\n      club\n      name\n    }\n  }\n  seasons {\n    __typename\n    id\n    name\n    closed\n    photo\n    eventCount\n    eventIds\n    winner\n    finalInfo\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("activeScoringSession", type: .object(ActiveScoringSession.selections)),
      GraphQLField("seasons", type: .nonNull(.list(.nonNull(.object(Season.selections))))),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(activeScoringSession: ActiveScoringSession? = nil, seasons: [Season]) {
      self.init(snapshot: ["__typename": "Query", "activeScoringSession": activeScoringSession.flatMap { $0.snapshot }, "seasons": seasons.map { $0.snapshot }])
    }

    public var activeScoringSession: ActiveScoringSession? {
      get {
        return (snapshot["activeScoringSession"] as? Snapshot).flatMap { ActiveScoringSession(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "activeScoringSession")
      }
    }

    /// Seasons (Only Tisdagsgolfen in this case)
    public var seasons: [Season] {
      get {
        return (snapshot["seasons"] as! [Snapshot]).map { Season(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue.map { $0.snapshot }, forKey: "seasons")
      }
    }

    public struct ActiveScoringSession: GraphQLSelectionSet {
      public static let possibleTypes = ["ScoringSession"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("scoringType", type: .nonNull(.scalar(String.self))),
        GraphQLField("teamEvent", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("course", type: .nonNull(.object(Course.selections))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, scoringType: String, teamEvent: Bool, course: Course) {
        self.init(snapshot: ["__typename": "ScoringSession", "id": id, "scoringType": scoringType, "teamEvent": teamEvent, "course": course.snapshot])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      /// id of the season
      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var scoringType: String {
        get {
          return snapshot["scoringType"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "scoringType")
        }
      }

      public var teamEvent: Bool {
        get {
          return snapshot["teamEvent"]! as! Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "teamEvent")
        }
      }

      public var course: Course {
        get {
          return Course(snapshot: snapshot["course"]! as! Snapshot)
        }
        set {
          snapshot.updateValue(newValue.snapshot, forKey: "course")
        }
      }

      public struct Course: GraphQLSelectionSet {
        public static let possibleTypes = ["Course"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("club", type: .nonNull(.scalar(String.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, club: String, name: String) {
          self.init(snapshot: ["__typename": "Course", "id": id, "club": club, "name": name])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var club: String {
          get {
            return snapshot["club"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "club")
          }
        }

        public var name: String {
          get {
            return snapshot["name"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }
      }
    }

    public struct Season: GraphQLSelectionSet {
      public static let possibleTypes = ["Season"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("closed", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("photo", type: .scalar(String.self)),
        GraphQLField("eventCount", type: .nonNull(.scalar(Int.self))),
        GraphQLField("eventIds", type: .list(.nonNull(.scalar(Int.self)))),
        GraphQLField("winner", type: .scalar(String.self)),
        GraphQLField("finalInfo", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, name: String, closed: Bool, photo: String? = nil, eventCount: Int, eventIds: [Int]? = nil, winner: String? = nil, finalInfo: String? = nil) {
        self.init(snapshot: ["__typename": "Season", "id": id, "name": name, "closed": closed, "photo": photo, "eventCount": eventCount, "eventIds": eventIds, "winner": winner, "finalInfo": finalInfo])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      /// id of the season
      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      /// Name of the season
      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      /// Is it closed?
      public var closed: Bool {
        get {
          return snapshot["closed"]! as! Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "closed")
        }
      }

      /// Url to season cover photo
      public var photo: String? {
        get {
          return snapshot["photo"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "photo")
        }
      }

      public var eventCount: Int {
        get {
          return snapshot["eventCount"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "eventCount")
        }
      }

      public var eventIds: [Int]? {
        get {
          return snapshot["eventIds"] as? [Int]
        }
        set {
          snapshot.updateValue(newValue, forKey: "eventIds")
        }
      }

      public var winner: String? {
        get {
          return snapshot["winner"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "winner")
        }
      }

      public var finalInfo: String? {
        get {
          return snapshot["finalInfo"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "finalInfo")
        }
      }
    }
  }
}

public final class SeasonLeaderboardQuery: GraphQLQuery {
  public static let operationString =
    "query seasonLeaderboard($seasonId: ID!, $eventId: ID!) {\n  players: seasonLeaderboard(seasonId: $seasonId, eventId: $eventId) {\n    __typename\n    id\n    photo\n    name\n    average\n    eventCount\n    topPoints\n    position\n    oldAverage\n    oldTotalPoints\n    prevPosition\n    totalPoints\n    totalKr\n    beers\n  }\n}"

  public var seasonId: GraphQLID
  public var eventId: GraphQLID

  public init(seasonId: GraphQLID, eventId: GraphQLID) {
    self.seasonId = seasonId
    self.eventId = eventId
  }

  public var variables: GraphQLMap? {
    return ["seasonId": seasonId, "eventId": eventId]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("seasonLeaderboard", alias: "players", arguments: ["seasonId": GraphQLVariable("seasonId"), "eventId": GraphQLVariable("eventId")], type: .nonNull(.list(.nonNull(.object(Player.selections))))),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(players: [Player]) {
      self.init(snapshot: ["__typename": "Query", "players": players.map { $0.snapshot }])
    }

    /// Leaderboard for a season by seasonID
    public var players: [Player] {
      get {
        return (snapshot["players"] as! [Snapshot]).map { Player(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue.map { $0.snapshot }, forKey: "players")
      }
    }

    public struct Player: GraphQLSelectionSet {
      public static let possibleTypes = ["LeaderboardUserType"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("photo", type: .scalar(String.self)),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("average", type: .nonNull(.scalar(Double.self))),
        GraphQLField("eventCount", type: .nonNull(.scalar(Int.self))),
        GraphQLField("topPoints", type: .nonNull(.list(.nonNull(.scalar(Int.self))))),
        GraphQLField("position", type: .nonNull(.scalar(Int.self))),
        GraphQLField("oldAverage", type: .scalar(Double.self)),
        GraphQLField("oldTotalPoints", type: .scalar(Int.self)),
        GraphQLField("prevPosition", type: .scalar(Int.self)),
        GraphQLField("totalPoints", type: .scalar(Int.self)),
        GraphQLField("totalKr", type: .nonNull(.scalar(Double.self))),
        GraphQLField("beers", type: .nonNull(.scalar(Int.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, photo: String? = nil, name: String, average: Double, eventCount: Int, topPoints: [Int], position: Int, oldAverage: Double? = nil, oldTotalPoints: Int? = nil, prevPosition: Int? = nil, totalPoints: Int? = nil, totalKr: Double, beers: Int) {
        self.init(snapshot: ["__typename": "LeaderboardUserType", "id": id, "photo": photo, "name": name, "average": average, "eventCount": eventCount, "topPoints": topPoints, "position": position, "oldAverage": oldAverage, "oldTotalPoints": oldTotalPoints, "prevPosition": prevPosition, "totalPoints": totalPoints, "totalKr": totalKr, "beers": beers])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var photo: String? {
        get {
          return snapshot["photo"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "photo")
        }
      }

      /// The name of this user
      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var average: Double {
        get {
          return snapshot["average"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "average")
        }
      }

      public var eventCount: Int {
        get {
          return snapshot["eventCount"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "eventCount")
        }
      }

      public var topPoints: [Int] {
        get {
          return snapshot["topPoints"]! as! [Int]
        }
        set {
          snapshot.updateValue(newValue, forKey: "topPoints")
        }
      }

      /// position
      public var position: Int {
        get {
          return snapshot["position"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "position")
        }
      }

      public var oldAverage: Double? {
        get {
          return snapshot["oldAverage"] as? Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "oldAverage")
        }
      }

      public var oldTotalPoints: Int? {
        get {
          return snapshot["oldTotalPoints"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "oldTotalPoints")
        }
      }

      public var prevPosition: Int? {
        get {
          return snapshot["prevPosition"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "prevPosition")
        }
      }

      public var totalPoints: Int? {
        get {
          return snapshot["totalPoints"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "totalPoints")
        }
      }

      public var totalKr: Double {
        get {
          return snapshot["totalKr"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "totalKr")
        }
      }

      public var beers: Int {
        get {
          return snapshot["beers"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "beers")
        }
      }
    }
  }
}

public final class LiveLeaderboardQueryQuery: GraphQLQuery {
  public static let operationString =
    "query liveLeaderboardQuery($scoringSessionId: ID!) {\n  user {\n    __typename\n    id\n  }\n  liveLeaderboard(scoringSessionId: $scoringSessionId) {\n    __typename\n    id\n    position\n    photo\n    name\n    beers\n    kr\n    points\n    strokes\n  }\n}"

  public var scoringSessionId: GraphQLID

  public init(scoringSessionId: GraphQLID) {
    self.scoringSessionId = scoringSessionId
  }

  public var variables: GraphQLMap? {
    return ["scoringSessionId": scoringSessionId]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("user", type: .nonNull(.object(User.selections))),
      GraphQLField("liveLeaderboard", arguments: ["scoringSessionId": GraphQLVariable("scoringSessionId")], type: .nonNull(.list(.nonNull(.object(LiveLeaderboard.selections))))),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(user: User, liveLeaderboard: [LiveLeaderboard]) {
      self.init(snapshot: ["__typename": "Query", "user": user.snapshot, "liveLeaderboard": liveLeaderboard.map { $0.snapshot }])
    }

    /// Get the logged in user and related data
    public var user: User {
      get {
        return User(snapshot: snapshot["user"]! as! Snapshot)
      }
      set {
        snapshot.updateValue(newValue.snapshot, forKey: "user")
      }
    }

    /// Live Leaderboard by scoringSessionId
    public var liveLeaderboard: [LiveLeaderboard] {
      get {
        return (snapshot["liveLeaderboard"] as! [Snapshot]).map { LiveLeaderboard(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue.map { $0.snapshot }, forKey: "liveLeaderboard")
      }
    }

    public struct User: GraphQLSelectionSet {
      public static let possibleTypes = ["User"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID) {
        self.init(snapshot: ["__typename": "User", "id": id])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      /// ID
      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }
    }

    public struct LiveLeaderboard: GraphQLSelectionSet {
      public static let possibleTypes = ["LiveLeaderboardUserType"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("position", type: .nonNull(.scalar(Int.self))),
        GraphQLField("photo", type: .scalar(String.self)),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("beers", type: .nonNull(.scalar(Int.self))),
        GraphQLField("kr", type: .nonNull(.scalar(Int.self))),
        GraphQLField("points", type: .nonNull(.scalar(Int.self))),
        GraphQLField("strokes", type: .nonNull(.scalar(Int.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, position: Int, photo: String? = nil, name: String, beers: Int, kr: Int, points: Int, strokes: Int) {
        self.init(snapshot: ["__typename": "LiveLeaderboardUserType", "id": id, "position": position, "photo": photo, "name": name, "beers": beers, "kr": kr, "points": points, "strokes": strokes])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var position: Int {
        get {
          return snapshot["position"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "position")
        }
      }

      public var photo: String? {
        get {
          return snapshot["photo"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "photo")
        }
      }

      /// The name of this user
      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var beers: Int {
        get {
          return snapshot["beers"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "beers")
        }
      }

      public var kr: Int {
        get {
          return snapshot["kr"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "kr")
        }
      }

      public var points: Int {
        get {
          return snapshot["points"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "points")
        }
      }

      public var strokes: Int {
        get {
          return snapshot["strokes"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "strokes")
        }
      }
    }
  }
}

public final class ScoringSessionQuery: GraphQLQuery {
  public static let operationString =
    "query scoringSession($scoringSessionId: ID!) {\n  scoringSession(id: $scoringSessionId) {\n    __typename\n    id\n    currentHole\n    scoringType\n    teamEvent\n    course {\n      __typename\n      id\n      club\n      name\n      par\n      holes {\n        __typename\n        id\n        number\n        par\n        index\n      }\n    }\n    scoringItems {\n      __typename\n      extraStrokes\n      users {\n        __typename\n        id\n        firstName\n        lastName\n        photo\n      }\n    }\n    liveScores {\n      __typename\n      id\n      user {\n        __typename\n        id\n      }\n      teamIndex\n      beers\n      extraStrokes\n      hole\n      index\n      par\n      playerIds\n      points\n      putts\n      strokes\n    }\n  }\n}"

  public var scoringSessionId: GraphQLID

  public init(scoringSessionId: GraphQLID) {
    self.scoringSessionId = scoringSessionId
  }

  public var variables: GraphQLMap? {
    return ["scoringSessionId": scoringSessionId]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("scoringSession", arguments: ["id": GraphQLVariable("scoringSessionId")], type: .nonNull(.object(ScoringSession.selections))),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(scoringSession: ScoringSession) {
      self.init(snapshot: ["__typename": "Query", "scoringSession": scoringSession.snapshot])
    }

    public var scoringSession: ScoringSession {
      get {
        return ScoringSession(snapshot: snapshot["scoringSession"]! as! Snapshot)
      }
      set {
        snapshot.updateValue(newValue.snapshot, forKey: "scoringSession")
      }
    }

    public struct ScoringSession: GraphQLSelectionSet {
      public static let possibleTypes = ["ScoringSession"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("currentHole", type: .nonNull(.scalar(Int.self))),
        GraphQLField("scoringType", type: .nonNull(.scalar(String.self))),
        GraphQLField("teamEvent", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("course", type: .nonNull(.object(Course.selections))),
        GraphQLField("scoringItems", type: .nonNull(.list(.nonNull(.object(ScoringItem.selections))))),
        GraphQLField("liveScores", type: .list(.nonNull(.object(LiveScore.selections)))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, currentHole: Int, scoringType: String, teamEvent: Bool, course: Course, scoringItems: [ScoringItem], liveScores: [LiveScore]? = nil) {
        let scoringItemsMap = scoringItems.map { $0.snapshot }
        let liveScoresMap = liveScores.flatMap { $0.map { $0.snapshot } }
        self.init(snapshot: ["__typename": "ScoringSession", "id": id, "currentHole": currentHole, "scoringType": scoringType, "teamEvent": teamEvent, "course": course.snapshot, "scoringItems": scoringItemsMap, "liveScores": liveScoresMap])
      }
        
      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      /// id of the season
      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var currentHole: Int {
        get {
          return snapshot["currentHole"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "currentHole")
        }
      }

      public var scoringType: String {
        get {
          return snapshot["scoringType"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "scoringType")
        }
      }

      public var teamEvent: Bool {
        get {
          return snapshot["teamEvent"]! as! Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "teamEvent")
        }
      }

      public var course: Course {
        get {
          return Course(snapshot: snapshot["course"]! as! Snapshot)
        }
        set {
          snapshot.updateValue(newValue.snapshot, forKey: "course")
        }
      }

      public var scoringItems: [ScoringItem] {
        get {
          return (snapshot["scoringItems"] as! [Snapshot]).map { ScoringItem(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue.map { $0.snapshot }, forKey: "scoringItems")
        }
      }

      public var liveScores: [LiveScore]? {
        get {
          return (snapshot["liveScores"] as? [Snapshot]).flatMap { $0.map { LiveScore(snapshot: $0) } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.snapshot } }, forKey: "liveScores")
        }
      }

      public struct Course: GraphQLSelectionSet {
        public static let possibleTypes = ["Course"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("club", type: .nonNull(.scalar(String.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("par", type: .nonNull(.scalar(Int.self))),
          GraphQLField("holes", type: .nonNull(.list(.nonNull(.object(Hole.selections))))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, club: String, name: String, par: Int, holes: [Hole]) {
          self.init(snapshot: ["__typename": "Course", "id": id, "club": club, "name": name, "par": par, "holes": holes.map { $0.snapshot }])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var club: String {
          get {
            return snapshot["club"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "club")
          }
        }

        public var name: String {
          get {
            return snapshot["name"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var par: Int {
          get {
            return snapshot["par"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "par")
          }
        }

        /// Holes
        public var holes: [Hole] {
          get {
            return (snapshot["holes"] as! [Snapshot]).map { Hole(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue.map { $0.snapshot }, forKey: "holes")
          }
        }

        public struct Hole: GraphQLSelectionSet {
          public static let possibleTypes = ["Hole"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("number", type: .nonNull(.scalar(Int.self))),
            GraphQLField("par", type: .nonNull(.scalar(Int.self))),
            GraphQLField("index", type: .nonNull(.scalar(Int.self))),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, number: Int, par: Int, index: Int) {
            self.init(snapshot: ["__typename": "Hole", "id": id, "number": number, "par": par, "index": index])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var number: Int {
            get {
              return snapshot["number"]! as! Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "number")
            }
          }

          public var par: Int {
            get {
              return snapshot["par"]! as! Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "par")
            }
          }

          public var index: Int {
            get {
              return snapshot["index"]! as! Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "index")
            }
          }
        }
      }

      public struct ScoringItem: GraphQLSelectionSet {
        public static let possibleTypes = ["ScoringItemType"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("extraStrokes", type: .nonNull(.scalar(Int.self))),
          GraphQLField("users", type: .nonNull(.list(.nonNull(.object(User.selections))))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(extraStrokes: Int, users: [User]) {
          self.init(snapshot: ["__typename": "ScoringItemType", "extraStrokes": extraStrokes, "users": users.map { $0.snapshot }])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var extraStrokes: Int {
          get {
            return snapshot["extraStrokes"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "extraStrokes")
          }
        }

        public var users: [User] {
          get {
            return (snapshot["users"] as! [Snapshot]).map { User(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue.map { $0.snapshot }, forKey: "users")
          }
        }

        public struct User: GraphQLSelectionSet {
          public static let possibleTypes = ["User"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("firstName", type: .nonNull(.scalar(String.self))),
            GraphQLField("lastName", type: .nonNull(.scalar(String.self))),
            GraphQLField("photo", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, firstName: String, lastName: String, photo: String? = nil) {
            self.init(snapshot: ["__typename": "User", "id": id, "firstName": firstName, "lastName": lastName, "photo": photo])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          /// ID
          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var firstName: String {
            get {
              return snapshot["firstName"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "firstName")
            }
          }

          public var lastName: String {
            get {
              return snapshot["lastName"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "lastName")
            }
          }

          /// The url to the photo of this user
          public var photo: String? {
            get {
              return snapshot["photo"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "photo")
            }
          }
        }
      }

      public struct LiveScore: GraphQLSelectionSet {
        public static let possibleTypes = ["LiveScore"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("user", type: .object(User.selections)),
          GraphQLField("teamIndex", type: .scalar(Int.self)),
          GraphQLField("beers", type: .scalar(Int.self)),
          GraphQLField("extraStrokes", type: .scalar(Int.self)),
          GraphQLField("hole", type: .scalar(Int.self)),
          GraphQLField("index", type: .scalar(Int.self)),
          GraphQLField("par", type: .scalar(Int.self)),
          GraphQLField("playerIds", type: .list(.nonNull(.scalar(Int.self)))),
          GraphQLField("points", type: .scalar(Int.self)),
          GraphQLField("putts", type: .scalar(Int.self)),
          GraphQLField("strokes", type: .scalar(Int.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, user: User? = nil, teamIndex: Int? = nil, beers: Int? = nil, extraStrokes: Int? = nil, hole: Int? = nil, index: Int? = nil, par: Int? = nil, playerIds: [Int]? = nil, points: Int? = nil, putts: Int? = nil, strokes: Int? = nil) {
          self.init(snapshot: ["__typename": "LiveScore", "id": id, "user": user.flatMap { $0.snapshot }, "teamIndex": teamIndex, "beers": beers, "extraStrokes": extraStrokes, "hole": hole, "index": index, "par": par, "playerIds": playerIds, "points": points, "putts": putts, "strokes": strokes])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        /// id of the score
        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var user: User? {
          get {
            return (snapshot["user"] as? Snapshot).flatMap { User(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "user")
          }
        }

        public var teamIndex: Int? {
          get {
            return snapshot["teamIndex"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "teamIndex")
          }
        }

        public var beers: Int? {
          get {
            return snapshot["beers"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "beers")
          }
        }

        public var extraStrokes: Int? {
          get {
            return snapshot["extraStrokes"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "extraStrokes")
          }
        }

        public var hole: Int? {
          get {
            return snapshot["hole"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "hole")
          }
        }

        public var index: Int? {
          get {
            return snapshot["index"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "index")
          }
        }

        public var par: Int? {
          get {
            return snapshot["par"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "par")
          }
        }

        public var playerIds: [Int]? {
          get {
            return snapshot["playerIds"] as? [Int]
          }
          set {
            snapshot.updateValue(newValue, forKey: "playerIds")
          }
        }

        public var points: Int? {
          get {
            return snapshot["points"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "points")
          }
        }

        public var putts: Int? {
          get {
            return snapshot["putts"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "putts")
          }
        }

        public var strokes: Int? {
          get {
            return snapshot["strokes"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "strokes")
          }
        }

        public struct User: GraphQLSelectionSet {
          public static let possibleTypes = ["User"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID) {
            self.init(snapshot: ["__typename": "User", "id": id])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          /// ID
          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }
        }
      }
    }
  }
}

public final class SeasonsQueryQuery: GraphQLQuery {
  public static let operationString =
    "query seasonsQuery {\n  seasons {\n    __typename\n    id\n    name\n    closed\n    photo\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("seasons", type: .nonNull(.list(.nonNull(.object(Season.selections))))),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(seasons: [Season]) {
      self.init(snapshot: ["__typename": "Query", "seasons": seasons.map { $0.snapshot }])
    }

    /// Seasons (Only Tisdagsgolfen in this case)
    public var seasons: [Season] {
      get {
        return (snapshot["seasons"] as! [Snapshot]).map { Season(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue.map { $0.snapshot }, forKey: "seasons")
      }
    }

    public struct Season: GraphQLSelectionSet {
      public static let possibleTypes = ["Season"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("closed", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("photo", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, name: String, closed: Bool, photo: String? = nil) {
        self.init(snapshot: ["__typename": "Season", "id": id, "name": name, "closed": closed, "photo": photo])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      /// id of the season
      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      /// Name of the season
      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      /// Is it closed?
      public var closed: Bool {
        get {
          return snapshot["closed"]! as! Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "closed")
        }
      }

      /// Url to season cover photo
      public var photo: String? {
        get {
          return snapshot["photo"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "photo")
        }
      }
    }
  }
}

public final class GetAllUsersQuery: GraphQLQuery {
  public static let operationString =
    "query getAllUsers {\n  players: users {\n    __typename\n    id\n    email\n    firstName\n    lastName\n    photo\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("users", alias: "players", type: .nonNull(.list(.nonNull(.object(Player.selections))))),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(players: [Player]) {
      self.init(snapshot: ["__typename": "Query", "players": players.map { $0.snapshot }])
    }

    /// List of users
    public var players: [Player] {
      get {
        return (snapshot["players"] as! [Snapshot]).map { Player(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue.map { $0.snapshot }, forKey: "players")
      }
    }

    public struct Player: GraphQLSelectionSet {
      public static let possibleTypes = ["User"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("email", type: .nonNull(.scalar(String.self))),
        GraphQLField("firstName", type: .nonNull(.scalar(String.self))),
        GraphQLField("lastName", type: .nonNull(.scalar(String.self))),
        GraphQLField("photo", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, email: String, firstName: String, lastName: String, photo: String? = nil) {
        self.init(snapshot: ["__typename": "User", "id": id, "email": email, "firstName": firstName, "lastName": lastName, "photo": photo])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      /// ID
      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      /// The email of this user
      public var email: String {
        get {
          return snapshot["email"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "email")
        }
      }

      public var firstName: String {
        get {
          return snapshot["firstName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "firstName")
        }
      }

      public var lastName: String {
        get {
          return snapshot["lastName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "lastName")
        }
      }

      /// The url to the photo of this user
      public var photo: String? {
        get {
          return snapshot["photo"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "photo")
        }
      }
    }
  }
}
