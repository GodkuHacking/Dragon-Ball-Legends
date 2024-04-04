.class public final enum Lcom/growthbeat/model/Intent$Type;
.super Ljava/lang/Enum;
.source "Intent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/growthbeat/model/Intent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/growthbeat/model/Intent$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/growthbeat/model/Intent$Type;

.field public static final enum custom:Lcom/growthbeat/model/Intent$Type;

.field public static final enum noop:Lcom/growthbeat/model/Intent$Type;

.field public static final enum url:Lcom/growthbeat/model/Intent$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 128
    new-instance v0, Lcom/growthbeat/model/Intent$Type;

    const-string v1, "custom"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/growthbeat/model/Intent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/growthbeat/model/Intent$Type;->custom:Lcom/growthbeat/model/Intent$Type;

    .line 129
    new-instance v1, Lcom/growthbeat/model/Intent$Type;

    const-string v3, "noop"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/growthbeat/model/Intent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/growthbeat/model/Intent$Type;->noop:Lcom/growthbeat/model/Intent$Type;

    .line 130
    new-instance v3, Lcom/growthbeat/model/Intent$Type;

    const-string v5, "url"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/growthbeat/model/Intent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/growthbeat/model/Intent$Type;->url:Lcom/growthbeat/model/Intent$Type;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/growthbeat/model/Intent$Type;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 127
    sput-object v5, Lcom/growthbeat/model/Intent$Type;->$VALUES:[Lcom/growthbeat/model/Intent$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 127
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/growthbeat/model/Intent$Type;
    .locals 1

    .line 127
    const-class v0, Lcom/growthbeat/model/Intent$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/growthbeat/model/Intent$Type;

    return-object p0
.end method

.method public static values()[Lcom/growthbeat/model/Intent$Type;
    .locals 1

    .line 127
    sget-object v0, Lcom/growthbeat/model/Intent$Type;->$VALUES:[Lcom/growthbeat/model/Intent$Type;

    invoke-virtual {v0}, [Lcom/growthbeat/model/Intent$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/growthbeat/model/Intent$Type;

    return-object v0
.end method
