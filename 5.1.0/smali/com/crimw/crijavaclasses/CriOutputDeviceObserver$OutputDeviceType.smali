.class final enum Lcom/crimw/crijavaclasses/CriOutputDeviceObserver$OutputDeviceType;
.super Ljava/lang/Enum;
.source "CriOutputDeviceObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crimw/crijavaclasses/CriOutputDeviceObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "OutputDeviceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/crimw/crijavaclasses/CriOutputDeviceObserver$OutputDeviceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/crimw/crijavaclasses/CriOutputDeviceObserver$OutputDeviceType;

.field public static final enum BuiltinSpeaker:Lcom/crimw/crijavaclasses/CriOutputDeviceObserver$OutputDeviceType;

.field public static final enum WiredDevice:Lcom/crimw/crijavaclasses/CriOutputDeviceObserver$OutputDeviceType;

.field public static final enum WirelessDevice:Lcom/crimw/crijavaclasses/CriOutputDeviceObserver$OutputDeviceType;


# instance fields
.field private final id:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 13
    new-instance v0, Lcom/crimw/crijavaclasses/CriOutputDeviceObserver$OutputDeviceType;

    const-string v1, "BuiltinSpeaker"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/crimw/crijavaclasses/CriOutputDeviceObserver$OutputDeviceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/crimw/crijavaclasses/CriOutputDeviceObserver$OutputDeviceType;->BuiltinSpeaker:Lcom/crimw/crijavaclasses/CriOutputDeviceObserver$OutputDeviceType;

    .line 14
    new-instance v1, Lcom/crimw/crijavaclasses/CriOutputDeviceObserver$OutputDeviceType;

    const-string v3, "WiredDevice"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/crimw/crijavaclasses/CriOutputDeviceObserver$OutputDeviceType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/crimw/crijavaclasses/CriOutputDeviceObserver$OutputDeviceType;->WiredDevice:Lcom/crimw/crijavaclasses/CriOutputDeviceObserver$OutputDeviceType;

    .line 15
    new-instance v3, Lcom/crimw/crijavaclasses/CriOutputDeviceObserver$OutputDeviceType;

    const-string v5, "WirelessDevice"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/crimw/crijavaclasses/CriOutputDeviceObserver$OutputDeviceType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/crimw/crijavaclasses/CriOutputDeviceObserver$OutputDeviceType;->WirelessDevice:Lcom/crimw/crijavaclasses/CriOutputDeviceObserver$OutputDeviceType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/crimw/crijavaclasses/CriOutputDeviceObserver$OutputDeviceType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 12
    sput-object v5, Lcom/crimw/crijavaclasses/CriOutputDeviceObserver$OutputDeviceType;->$VALUES:[Lcom/crimw/crijavaclasses/CriOutputDeviceObserver$OutputDeviceType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 21
    iput p3, p0, Lcom/crimw/crijavaclasses/CriOutputDeviceObserver$OutputDeviceType;->id:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/crimw/crijavaclasses/CriOutputDeviceObserver$OutputDeviceType;
    .locals 1

    .line 12
    const-class v0, Lcom/crimw/crijavaclasses/CriOutputDeviceObserver$OutputDeviceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/crimw/crijavaclasses/CriOutputDeviceObserver$OutputDeviceType;

    return-object p0
.end method

.method public static values()[Lcom/crimw/crijavaclasses/CriOutputDeviceObserver$OutputDeviceType;
    .locals 1

    .line 12
    sget-object v0, Lcom/crimw/crijavaclasses/CriOutputDeviceObserver$OutputDeviceType;->$VALUES:[Lcom/crimw/crijavaclasses/CriOutputDeviceObserver$OutputDeviceType;

    invoke-virtual {v0}, [Lcom/crimw/crijavaclasses/CriOutputDeviceObserver$OutputDeviceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/crimw/crijavaclasses/CriOutputDeviceObserver$OutputDeviceType;

    return-object v0
.end method


# virtual methods
.method public getInt()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/crimw/crijavaclasses/CriOutputDeviceObserver$OutputDeviceType;->id:I

    return v0
.end method
