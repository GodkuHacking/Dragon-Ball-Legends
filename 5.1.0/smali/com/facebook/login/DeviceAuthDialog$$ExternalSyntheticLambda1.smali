.class public final synthetic Lcom/facebook/login/DeviceAuthDialog$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/facebook/login/DeviceAuthDialog;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lcom/facebook/login/DeviceAuthDialog$PermissionsLists;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Ljava/util/Date;

.field public final synthetic f$5:Ljava/util/Date;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/login/DeviceAuthDialog;Ljava/lang/String;Lcom/facebook/login/DeviceAuthDialog$PermissionsLists;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/login/DeviceAuthDialog$$ExternalSyntheticLambda1;->f$0:Lcom/facebook/login/DeviceAuthDialog;

    iput-object p2, p0, Lcom/facebook/login/DeviceAuthDialog$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/login/DeviceAuthDialog$$ExternalSyntheticLambda1;->f$2:Lcom/facebook/login/DeviceAuthDialog$PermissionsLists;

    iput-object p4, p0, Lcom/facebook/login/DeviceAuthDialog$$ExternalSyntheticLambda1;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/facebook/login/DeviceAuthDialog$$ExternalSyntheticLambda1;->f$4:Ljava/util/Date;

    iput-object p6, p0, Lcom/facebook/login/DeviceAuthDialog$$ExternalSyntheticLambda1;->f$5:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog$$ExternalSyntheticLambda1;->f$0:Lcom/facebook/login/DeviceAuthDialog;

    iget-object v1, p0, Lcom/facebook/login/DeviceAuthDialog$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/login/DeviceAuthDialog$$ExternalSyntheticLambda1;->f$2:Lcom/facebook/login/DeviceAuthDialog$PermissionsLists;

    iget-object v3, p0, Lcom/facebook/login/DeviceAuthDialog$$ExternalSyntheticLambda1;->f$3:Ljava/lang/String;

    iget-object v4, p0, Lcom/facebook/login/DeviceAuthDialog$$ExternalSyntheticLambda1;->f$4:Ljava/util/Date;

    iget-object v5, p0, Lcom/facebook/login/DeviceAuthDialog$$ExternalSyntheticLambda1;->f$5:Ljava/util/Date;

    move-object v6, p1

    move v7, p2

    invoke-static/range {v0 .. v7}, Lcom/facebook/login/DeviceAuthDialog;->$r8$lambda$Z7S_REJ4wifobA65d8Fs8Mb6BNE(Lcom/facebook/login/DeviceAuthDialog;Ljava/lang/String;Lcom/facebook/login/DeviceAuthDialog$PermissionsLists;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Landroid/content/DialogInterface;I)V

    return-void
.end method
