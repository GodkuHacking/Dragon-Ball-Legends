.class public final enum Lcom/unity/purchasing/common/InitializationFailureReason;
.super Ljava/lang/Enum;
.source "InitializationFailureReason.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/unity/purchasing/common/InitializationFailureReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/unity/purchasing/common/InitializationFailureReason;

.field public static final enum AppNotKnown:Lcom/unity/purchasing/common/InitializationFailureReason;

.field public static final enum NoProductsAvailable:Lcom/unity/purchasing/common/InitializationFailureReason;

.field public static final enum PurchasingUnavailable:Lcom/unity/purchasing/common/InitializationFailureReason;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 7
    new-instance v0, Lcom/unity/purchasing/common/InitializationFailureReason;

    const-string v1, "PurchasingUnavailable"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/unity/purchasing/common/InitializationFailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity/purchasing/common/InitializationFailureReason;->PurchasingUnavailable:Lcom/unity/purchasing/common/InitializationFailureReason;

    .line 8
    new-instance v0, Lcom/unity/purchasing/common/InitializationFailureReason;

    const-string v1, "NoProductsAvailable"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/unity/purchasing/common/InitializationFailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity/purchasing/common/InitializationFailureReason;->NoProductsAvailable:Lcom/unity/purchasing/common/InitializationFailureReason;

    .line 9
    new-instance v0, Lcom/unity/purchasing/common/InitializationFailureReason;

    const-string v1, "AppNotKnown"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/unity/purchasing/common/InitializationFailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity/purchasing/common/InitializationFailureReason;->AppNotKnown:Lcom/unity/purchasing/common/InitializationFailureReason;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/unity/purchasing/common/InitializationFailureReason;

    .line 6
    sget-object v5, Lcom/unity/purchasing/common/InitializationFailureReason;->PurchasingUnavailable:Lcom/unity/purchasing/common/InitializationFailureReason;

    aput-object v5, v1, v2

    sget-object v2, Lcom/unity/purchasing/common/InitializationFailureReason;->NoProductsAvailable:Lcom/unity/purchasing/common/InitializationFailureReason;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/unity/purchasing/common/InitializationFailureReason;->$VALUES:[Lcom/unity/purchasing/common/InitializationFailureReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/unity/purchasing/common/InitializationFailureReason;
    .locals 1

    .line 6
    const-class v0, Lcom/unity/purchasing/common/InitializationFailureReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/unity/purchasing/common/InitializationFailureReason;

    return-object p0
.end method

.method public static values()[Lcom/unity/purchasing/common/InitializationFailureReason;
    .locals 1

    .line 6
    sget-object v0, Lcom/unity/purchasing/common/InitializationFailureReason;->$VALUES:[Lcom/unity/purchasing/common/InitializationFailureReason;

    invoke-virtual {v0}, [Lcom/unity/purchasing/common/InitializationFailureReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unity/purchasing/common/InitializationFailureReason;

    return-object v0
.end method
