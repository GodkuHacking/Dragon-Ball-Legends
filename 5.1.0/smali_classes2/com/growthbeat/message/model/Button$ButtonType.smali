.class public final enum Lcom/growthbeat/message/model/Button$ButtonType;
.super Ljava/lang/Enum;
.source "Button.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/growthbeat/message/model/Button;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ButtonType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/growthbeat/message/model/Button$ButtonType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/growthbeat/message/model/Button$ButtonType;

.field public static final enum close:Lcom/growthbeat/message/model/Button$ButtonType;

.field public static final enum image:Lcom/growthbeat/message/model/Button$ButtonType;

.field public static final enum plain:Lcom/growthbeat/message/model/Button$ButtonType;

.field public static final enum screen:Lcom/growthbeat/message/model/Button$ButtonType;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 122
    new-instance v0, Lcom/growthbeat/message/model/Button$ButtonType;

    const-string v1, "plain"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/growthbeat/message/model/Button$ButtonType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/growthbeat/message/model/Button$ButtonType;->plain:Lcom/growthbeat/message/model/Button$ButtonType;

    .line 123
    new-instance v1, Lcom/growthbeat/message/model/Button$ButtonType;

    const-string v3, "image"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/growthbeat/message/model/Button$ButtonType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/growthbeat/message/model/Button$ButtonType;->image:Lcom/growthbeat/message/model/Button$ButtonType;

    .line 124
    new-instance v3, Lcom/growthbeat/message/model/Button$ButtonType;

    const-string v5, "screen"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/growthbeat/message/model/Button$ButtonType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/growthbeat/message/model/Button$ButtonType;->screen:Lcom/growthbeat/message/model/Button$ButtonType;

    .line 125
    new-instance v5, Lcom/growthbeat/message/model/Button$ButtonType;

    const-string v7, "close"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/growthbeat/message/model/Button$ButtonType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/growthbeat/message/model/Button$ButtonType;->close:Lcom/growthbeat/message/model/Button$ButtonType;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/growthbeat/message/model/Button$ButtonType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 121
    sput-object v7, Lcom/growthbeat/message/model/Button$ButtonType;->$VALUES:[Lcom/growthbeat/message/model/Button$ButtonType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 121
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/growthbeat/message/model/Button$ButtonType;
    .locals 1

    .line 121
    const-class v0, Lcom/growthbeat/message/model/Button$ButtonType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/growthbeat/message/model/Button$ButtonType;

    return-object p0
.end method

.method public static values()[Lcom/growthbeat/message/model/Button$ButtonType;
    .locals 1

    .line 121
    sget-object v0, Lcom/growthbeat/message/model/Button$ButtonType;->$VALUES:[Lcom/growthbeat/message/model/Button$ButtonType;

    invoke-virtual {v0}, [Lcom/growthbeat/message/model/Button$ButtonType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/growthbeat/message/model/Button$ButtonType;

    return-object v0
.end method
