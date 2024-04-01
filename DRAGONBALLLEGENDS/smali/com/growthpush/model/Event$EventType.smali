.class public final enum Lcom/growthpush/model/Event$EventType;
.super Ljava/lang/Enum;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/growthpush/model/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EventType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/growthpush/model/Event$EventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/growthpush/model/Event$EventType;

.field public static final enum custom:Lcom/growthpush/model/Event$EventType;

.field public static final enum message:Lcom/growthpush/model/Event$EventType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 126
    new-instance v0, Lcom/growthpush/model/Event$EventType;

    const-string v1, "custom"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/growthpush/model/Event$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/growthpush/model/Event$EventType;->custom:Lcom/growthpush/model/Event$EventType;

    .line 127
    new-instance v0, Lcom/growthpush/model/Event$EventType;

    const-string v1, "message"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/growthpush/model/Event$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/growthpush/model/Event$EventType;->message:Lcom/growthpush/model/Event$EventType;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/growthpush/model/Event$EventType;

    .line 125
    sget-object v4, Lcom/growthpush/model/Event$EventType;->custom:Lcom/growthpush/model/Event$EventType;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/growthpush/model/Event$EventType;->$VALUES:[Lcom/growthpush/model/Event$EventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 125
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/growthpush/model/Event$EventType;
    .locals 1

    .line 125
    const-class v0, Lcom/growthpush/model/Event$EventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/growthpush/model/Event$EventType;

    return-object p0
.end method

.method public static values()[Lcom/growthpush/model/Event$EventType;
    .locals 1

    .line 125
    sget-object v0, Lcom/growthpush/model/Event$EventType;->$VALUES:[Lcom/growthpush/model/Event$EventType;

    invoke-virtual {v0}, [Lcom/growthpush/model/Event$EventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/growthpush/model/Event$EventType;

    return-object v0
.end method
