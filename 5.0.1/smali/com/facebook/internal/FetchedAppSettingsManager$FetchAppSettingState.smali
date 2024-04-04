.class public final enum Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;
.super Ljava/lang/Enum;
.source "FetchedAppSettingsManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/FetchedAppSettingsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FetchAppSettingState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0006\u0008\u0080\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;",
        "",
        "(Ljava/lang/String;I)V",
        "NOT_LOADED",
        "LOADING",
        "SUCCESS",
        "ERROR",
        "facebook-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;

.field public static final enum ERROR:Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;

.field public static final enum LOADING:Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;

.field public static final enum NOT_LOADED:Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;

.field public static final enum SUCCESS:Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;


# direct methods
.method private static final synthetic $values()[Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;

    sget-object v1, Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;->NOT_LOADED:Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;->LOADING:Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;->SUCCESS:Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;->ERROR:Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 330
    new-instance v0, Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;

    const-string v1, "NOT_LOADED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;->NOT_LOADED:Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;

    .line 331
    new-instance v0, Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;

    const-string v1, "LOADING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;->LOADING:Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;

    .line 332
    new-instance v0, Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;

    const-string v1, "SUCCESS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;->SUCCESS:Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;

    .line 333
    new-instance v0, Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;

    const-string v1, "ERROR"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;->ERROR:Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;

    invoke-static {}, Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;->$values()[Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;

    move-result-object v0

    sput-object v0, Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;->$VALUES:[Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 329
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;
    .locals 1

    const-string v0, "value"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 334
    check-cast p0, Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;

    return-object p0
.end method

.method public static values()[Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;
    .locals 2

    sget-object v0, Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;->$VALUES:[Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .line 334
    check-cast v0, [Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;

    return-object v0
.end method
