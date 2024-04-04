.class public abstract Lcom/google/android/libraries/play/games/inputmapping/datamodel/InputControls;
.super Ljava/lang/Object;
.source "com.google.android.libraries.play.games:inputmapping@@0.0.4"


# static fields
.field public static final MOUSE_ACTION_UNSPECIFIED:I = 0x0

.field public static final MOUSE_BACK_CLICK:I = 0x4

.field public static final MOUSE_FORWARD_CLICK:I = 0x3

.field public static final MOUSE_LEFT_CLICK:I = 0xa

.field public static final MOUSE_LEFT_DRAG:I = 0x8

.field public static final MOUSE_MOVEMENT:I = 0x7

.field public static final MOUSE_RIGHT_CLICK:I = 0x1

.field public static final MOUSE_RIGHT_DRAG:I = 0x9

.field public static final MOUSE_SCROLL_DOWN:I = 0x6

.field public static final MOUSE_SCROLL_UP:I = 0x5

.field public static final MOUSE_TERTIARY_CLICK:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/util/List;Ljava/util/List;)Lcom/google/android/libraries/play/games/inputmapping/datamodel/InputControls;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/android/libraries/play/games/inputmapping/datamodel/InputControls;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/libraries/play/games/inputmapping/datamodel/AutoValue_InputControls;

    invoke-direct {v0, p0, p1}, Lcom/google/android/libraries/play/games/inputmapping/datamodel/AutoValue_InputControls;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method abstract keycodes()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method abstract mouseActions()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method
