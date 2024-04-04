.class public final enum Lcom/facebook/unity/FBUnityLoginActivity$LoginType;
.super Ljava/lang/Enum;
.source "FBUnityLoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/unity/FBUnityLoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LoginType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/unity/FBUnityLoginActivity$LoginType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/unity/FBUnityLoginActivity$LoginType;

.field public static final enum PUBLISH:Lcom/facebook/unity/FBUnityLoginActivity$LoginType;

.field public static final enum READ:Lcom/facebook/unity/FBUnityLoginActivity$LoginType;

.field public static final enum TV_PUBLISH:Lcom/facebook/unity/FBUnityLoginActivity$LoginType;

.field public static final enum TV_READ:Lcom/facebook/unity/FBUnityLoginActivity$LoginType;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 59
    new-instance v0, Lcom/facebook/unity/FBUnityLoginActivity$LoginType;

    const-string v1, "READ"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/facebook/unity/FBUnityLoginActivity$LoginType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/unity/FBUnityLoginActivity$LoginType;->READ:Lcom/facebook/unity/FBUnityLoginActivity$LoginType;

    .line 60
    new-instance v1, Lcom/facebook/unity/FBUnityLoginActivity$LoginType;

    const-string v3, "PUBLISH"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/facebook/unity/FBUnityLoginActivity$LoginType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/facebook/unity/FBUnityLoginActivity$LoginType;->PUBLISH:Lcom/facebook/unity/FBUnityLoginActivity$LoginType;

    .line 61
    new-instance v3, Lcom/facebook/unity/FBUnityLoginActivity$LoginType;

    const-string v5, "TV_READ"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/facebook/unity/FBUnityLoginActivity$LoginType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/facebook/unity/FBUnityLoginActivity$LoginType;->TV_READ:Lcom/facebook/unity/FBUnityLoginActivity$LoginType;

    .line 62
    new-instance v5, Lcom/facebook/unity/FBUnityLoginActivity$LoginType;

    const-string v7, "TV_PUBLISH"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/facebook/unity/FBUnityLoginActivity$LoginType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/facebook/unity/FBUnityLoginActivity$LoginType;->TV_PUBLISH:Lcom/facebook/unity/FBUnityLoginActivity$LoginType;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/facebook/unity/FBUnityLoginActivity$LoginType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 58
    sput-object v7, Lcom/facebook/unity/FBUnityLoginActivity$LoginType;->$VALUES:[Lcom/facebook/unity/FBUnityLoginActivity$LoginType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/unity/FBUnityLoginActivity$LoginType;
    .locals 1

    .line 58
    const-class v0, Lcom/facebook/unity/FBUnityLoginActivity$LoginType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/unity/FBUnityLoginActivity$LoginType;

    return-object p0
.end method

.method public static values()[Lcom/facebook/unity/FBUnityLoginActivity$LoginType;
    .locals 1

    .line 58
    sget-object v0, Lcom/facebook/unity/FBUnityLoginActivity$LoginType;->$VALUES:[Lcom/facebook/unity/FBUnityLoginActivity$LoginType;

    invoke-virtual {v0}, [Lcom/facebook/unity/FBUnityLoginActivity$LoginType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/unity/FBUnityLoginActivity$LoginType;

    return-object v0
.end method
