.class final enum Lcom/google/googlesignin/GoogleSignInFragment$State;
.super Ljava/lang/Enum;
.source "GoogleSignInFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlesignin/GoogleSignInFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/googlesignin/GoogleSignInFragment$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/googlesignin/GoogleSignInFragment$State;

.field public static final enum BUSY:Lcom/google/googlesignin/GoogleSignInFragment$State;

.field public static final enum NEW:Lcom/google/googlesignin/GoogleSignInFragment$State;

.field public static final enum PENDING:Lcom/google/googlesignin/GoogleSignInFragment$State;

.field public static final enum PENDING_SILENT:Lcom/google/googlesignin/GoogleSignInFragment$State;

.field public static final enum READY:Lcom/google/googlesignin/GoogleSignInFragment$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 130
    new-instance v0, Lcom/google/googlesignin/GoogleSignInFragment$State;

    const-string v1, "NEW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/googlesignin/GoogleSignInFragment$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlesignin/GoogleSignInFragment$State;->NEW:Lcom/google/googlesignin/GoogleSignInFragment$State;

    .line 131
    new-instance v0, Lcom/google/googlesignin/GoogleSignInFragment$State;

    const-string v1, "READY"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/google/googlesignin/GoogleSignInFragment$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlesignin/GoogleSignInFragment$State;->READY:Lcom/google/googlesignin/GoogleSignInFragment$State;

    .line 132
    new-instance v0, Lcom/google/googlesignin/GoogleSignInFragment$State;

    const-string v1, "PENDING"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/google/googlesignin/GoogleSignInFragment$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlesignin/GoogleSignInFragment$State;->PENDING:Lcom/google/googlesignin/GoogleSignInFragment$State;

    .line 133
    new-instance v0, Lcom/google/googlesignin/GoogleSignInFragment$State;

    const-string v1, "PENDING_SILENT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/google/googlesignin/GoogleSignInFragment$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlesignin/GoogleSignInFragment$State;->PENDING_SILENT:Lcom/google/googlesignin/GoogleSignInFragment$State;

    .line 134
    new-instance v0, Lcom/google/googlesignin/GoogleSignInFragment$State;

    const-string v1, "BUSY"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/google/googlesignin/GoogleSignInFragment$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlesignin/GoogleSignInFragment$State;->BUSY:Lcom/google/googlesignin/GoogleSignInFragment$State;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/google/googlesignin/GoogleSignInFragment$State;

    .line 129
    sget-object v7, Lcom/google/googlesignin/GoogleSignInFragment$State;->NEW:Lcom/google/googlesignin/GoogleSignInFragment$State;

    aput-object v7, v1, v2

    sget-object v2, Lcom/google/googlesignin/GoogleSignInFragment$State;->READY:Lcom/google/googlesignin/GoogleSignInFragment$State;

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/googlesignin/GoogleSignInFragment$State;->PENDING:Lcom/google/googlesignin/GoogleSignInFragment$State;

    aput-object v2, v1, v4

    sget-object v2, Lcom/google/googlesignin/GoogleSignInFragment$State;->PENDING_SILENT:Lcom/google/googlesignin/GoogleSignInFragment$State;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lcom/google/googlesignin/GoogleSignInFragment$State;->$VALUES:[Lcom/google/googlesignin/GoogleSignInFragment$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 129
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/googlesignin/GoogleSignInFragment$State;
    .locals 1

    .line 129
    const-class v0, Lcom/google/googlesignin/GoogleSignInFragment$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/googlesignin/GoogleSignInFragment$State;

    return-object p0
.end method

.method public static values()[Lcom/google/googlesignin/GoogleSignInFragment$State;
    .locals 1

    .line 129
    sget-object v0, Lcom/google/googlesignin/GoogleSignInFragment$State;->$VALUES:[Lcom/google/googlesignin/GoogleSignInFragment$State;

    invoke-virtual {v0}, [Lcom/google/googlesignin/GoogleSignInFragment$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/googlesignin/GoogleSignInFragment$State;

    return-object v0
.end method
