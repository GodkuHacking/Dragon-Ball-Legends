.class public abstract Lcom/google/android/libraries/play/games/inputmapping/datamodel/MouseSettings;
.super Ljava/lang/Object;
.source "com.google.android.libraries.play.games:inputmapping@@0.0.4"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(ZZ)Lcom/google/android/libraries/play/games/inputmapping/datamodel/MouseSettings;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/libraries/play/games/inputmapping/datamodel/AutoValue_MouseSettings;

    invoke-direct {v0, p0, p1}, Lcom/google/android/libraries/play/games/inputmapping/datamodel/AutoValue_MouseSettings;-><init>(ZZ)V

    return-object v0
.end method


# virtual methods
.method abstract allowMouseSensitivityAdjustment()Z
.end method

.method abstract invertMouseMovement()Z
.end method
