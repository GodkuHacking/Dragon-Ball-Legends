.class public final enum Lcom/growthpush/view/DialogType;
.super Ljava/lang/Enum;
.source "DialogType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/growthpush/view/DialogType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/growthpush/view/DialogType;

.field public static final enum none:Lcom/growthpush/view/DialogType;

.field public static final enum plain:Lcom/growthpush/view/DialogType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 4
    new-instance v0, Lcom/growthpush/view/DialogType;

    const-string v1, "none"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/growthpush/view/DialogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/growthpush/view/DialogType;->none:Lcom/growthpush/view/DialogType;

    .line 5
    new-instance v1, Lcom/growthpush/view/DialogType;

    const-string v3, "plain"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/growthpush/view/DialogType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/growthpush/view/DialogType;->plain:Lcom/growthpush/view/DialogType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/growthpush/view/DialogType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lcom/growthpush/view/DialogType;->$VALUES:[Lcom/growthpush/view/DialogType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/growthpush/view/DialogType;
    .locals 1

    .line 3
    const-class v0, Lcom/growthpush/view/DialogType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/growthpush/view/DialogType;

    return-object p0
.end method

.method public static values()[Lcom/growthpush/view/DialogType;
    .locals 1

    .line 3
    sget-object v0, Lcom/growthpush/view/DialogType;->$VALUES:[Lcom/growthpush/view/DialogType;

    invoke-virtual {v0}, [Lcom/growthpush/view/DialogType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/growthpush/view/DialogType;

    return-object v0
.end method
