.class public final synthetic Lcom/google/firebase/crashlytics/internal/model/serialization/CrashlyticsReportJsonTransform$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/firebase/crashlytics/internal/model/serialization/CrashlyticsReportJsonTransform$ObjectParser;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/firebase/crashlytics/internal/model/serialization/CrashlyticsReportJsonTransform$$ExternalSyntheticLambda1;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/crashlytics/internal/model/serialization/CrashlyticsReportJsonTransform$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/google/firebase/crashlytics/internal/model/serialization/CrashlyticsReportJsonTransform$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcom/google/firebase/crashlytics/internal/model/serialization/CrashlyticsReportJsonTransform$$ExternalSyntheticLambda1;->INSTANCE:Lcom/google/firebase/crashlytics/internal/model/serialization/CrashlyticsReportJsonTransform$$ExternalSyntheticLambda1;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final parse(Landroid/util/JsonReader;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lcom/google/firebase/crashlytics/internal/model/serialization/CrashlyticsReportJsonTransform;->$r8$lambda$-T1LvqD4bqY3uVE5QE8T26E_vvI(Landroid/util/JsonReader;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Event$RolloutAssignment;

    move-result-object p1

    return-object p1
.end method
