.class public final enum Lcom/growthpush/model/Client$Status;
.super Ljava/lang/Enum;
.source "Client.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/growthpush/model/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/growthpush/model/Client$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/growthpush/model/Client$Status;

.field public static final enum active:Lcom/growthpush/model/Client$Status;

.field public static final enum inactive:Lcom/growthpush/model/Client$Status;

.field public static final enum invalid:Lcom/growthpush/model/Client$Status;

.field public static final enum unknown:Lcom/growthpush/model/Client$Status;

.field public static final enum validating:Lcom/growthpush/model/Client$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 204
    new-instance v0, Lcom/growthpush/model/Client$Status;

    const-string v1, "unknown"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/growthpush/model/Client$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/growthpush/model/Client$Status;->unknown:Lcom/growthpush/model/Client$Status;

    new-instance v1, Lcom/growthpush/model/Client$Status;

    const-string v3, "validating"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/growthpush/model/Client$Status;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/growthpush/model/Client$Status;->validating:Lcom/growthpush/model/Client$Status;

    new-instance v3, Lcom/growthpush/model/Client$Status;

    const-string v5, "active"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/growthpush/model/Client$Status;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/growthpush/model/Client$Status;->active:Lcom/growthpush/model/Client$Status;

    new-instance v5, Lcom/growthpush/model/Client$Status;

    const-string v7, "inactive"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/growthpush/model/Client$Status;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/growthpush/model/Client$Status;->inactive:Lcom/growthpush/model/Client$Status;

    new-instance v7, Lcom/growthpush/model/Client$Status;

    const-string v9, "invalid"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/growthpush/model/Client$Status;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/growthpush/model/Client$Status;->invalid:Lcom/growthpush/model/Client$Status;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/growthpush/model/Client$Status;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 203
    sput-object v9, Lcom/growthpush/model/Client$Status;->$VALUES:[Lcom/growthpush/model/Client$Status;

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

.method public static valueOf(Ljava/lang/String;)Lcom/growthpush/model/Client$Status;
    .locals 1

    .line 203
    const-class v0, Lcom/growthpush/model/Client$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/growthpush/model/Client$Status;

    return-object p0
.end method

.method public static values()[Lcom/growthpush/model/Client$Status;
    .locals 1

    .line 203
    sget-object v0, Lcom/growthpush/model/Client$Status;->$VALUES:[Lcom/growthpush/model/Client$Status;

    invoke-virtual {v0}, [Lcom/growthpush/model/Client$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/growthpush/model/Client$Status;

    return-object v0
.end method
