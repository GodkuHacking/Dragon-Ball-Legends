.class public final synthetic Lcom/facebook/login/-$$Lambda$DeviceAuthDialog$7swjnsLEN3poAnp8jda0f_NPNhE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/facebook/GraphRequest$Callback;


# instance fields
.field public final synthetic f$0:Lcom/facebook/login/DeviceAuthDialog;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/util/Date;

.field public final synthetic f$3:Ljava/util/Date;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/login/DeviceAuthDialog;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/login/-$$Lambda$DeviceAuthDialog$7swjnsLEN3poAnp8jda0f_NPNhE;->f$0:Lcom/facebook/login/DeviceAuthDialog;

    iput-object p2, p0, Lcom/facebook/login/-$$Lambda$DeviceAuthDialog$7swjnsLEN3poAnp8jda0f_NPNhE;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/login/-$$Lambda$DeviceAuthDialog$7swjnsLEN3poAnp8jda0f_NPNhE;->f$2:Ljava/util/Date;

    iput-object p4, p0, Lcom/facebook/login/-$$Lambda$DeviceAuthDialog$7swjnsLEN3poAnp8jda0f_NPNhE;->f$3:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public final onCompleted(Lcom/facebook/GraphResponse;)V
    .locals 4

    iget-object v0, p0, Lcom/facebook/login/-$$Lambda$DeviceAuthDialog$7swjnsLEN3poAnp8jda0f_NPNhE;->f$0:Lcom/facebook/login/DeviceAuthDialog;

    iget-object v1, p0, Lcom/facebook/login/-$$Lambda$DeviceAuthDialog$7swjnsLEN3poAnp8jda0f_NPNhE;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/login/-$$Lambda$DeviceAuthDialog$7swjnsLEN3poAnp8jda0f_NPNhE;->f$2:Ljava/util/Date;

    iget-object v3, p0, Lcom/facebook/login/-$$Lambda$DeviceAuthDialog$7swjnsLEN3poAnp8jda0f_NPNhE;->f$3:Ljava/util/Date;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/facebook/login/DeviceAuthDialog;->lambda$7swjnsLEN3poAnp8jda0f_NPNhE(Lcom/facebook/login/DeviceAuthDialog;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Lcom/facebook/GraphResponse;)V

    return-void
.end method
