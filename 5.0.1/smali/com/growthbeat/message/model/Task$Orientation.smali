.class public final enum Lcom/growthbeat/message/model/Task$Orientation;
.super Ljava/lang/Enum;
.source "Task.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/growthbeat/message/model/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Orientation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/growthbeat/message/model/Task$Orientation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/growthbeat/message/model/Task$Orientation;

.field public static final enum horizontal:Lcom/growthbeat/message/model/Task$Orientation;

.field public static final enum vertical:Lcom/growthbeat/message/model/Task$Orientation;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 204
    new-instance v0, Lcom/growthbeat/message/model/Task$Orientation;

    const-string v1, "vertical"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/growthbeat/message/model/Task$Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/growthbeat/message/model/Task$Orientation;->vertical:Lcom/growthbeat/message/model/Task$Orientation;

    .line 205
    new-instance v0, Lcom/growthbeat/message/model/Task$Orientation;

    const-string v1, "horizontal"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/growthbeat/message/model/Task$Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/growthbeat/message/model/Task$Orientation;->horizontal:Lcom/growthbeat/message/model/Task$Orientation;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/growthbeat/message/model/Task$Orientation;

    .line 203
    sget-object v4, Lcom/growthbeat/message/model/Task$Orientation;->vertical:Lcom/growthbeat/message/model/Task$Orientation;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/growthbeat/message/model/Task$Orientation;->$VALUES:[Lcom/growthbeat/message/model/Task$Orientation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 203
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/growthbeat/message/model/Task$Orientation;
    .locals 1

    .line 203
    const-class v0, Lcom/growthbeat/message/model/Task$Orientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/growthbeat/message/model/Task$Orientation;

    return-object p0
.end method

.method public static values()[Lcom/growthbeat/message/model/Task$Orientation;
    .locals 1

    .line 203
    sget-object v0, Lcom/growthbeat/message/model/Task$Orientation;->$VALUES:[Lcom/growthbeat/message/model/Task$Orientation;

    invoke-virtual {v0}, [Lcom/growthbeat/message/model/Task$Orientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/growthbeat/message/model/Task$Orientation;

    return-object v0
.end method
