.class public final synthetic Lnet/codestage/actk/androidnative/-$$Lambda$CodeHashGenerator$oEtDGUvIrFMOvldnkewxabtK-JU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lnet/codestage/actk/androidnative/CodeHashGenerator$HashCalculationResult;

.field public final synthetic f$1:Lnet/codestage/actk/androidnative/CodeHashCallback;


# direct methods
.method public synthetic constructor <init>(Lnet/codestage/actk/androidnative/CodeHashGenerator$HashCalculationResult;Lnet/codestage/actk/androidnative/CodeHashCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/codestage/actk/androidnative/-$$Lambda$CodeHashGenerator$oEtDGUvIrFMOvldnkewxabtK-JU;->f$0:Lnet/codestage/actk/androidnative/CodeHashGenerator$HashCalculationResult;

    iput-object p2, p0, Lnet/codestage/actk/androidnative/-$$Lambda$CodeHashGenerator$oEtDGUvIrFMOvldnkewxabtK-JU;->f$1:Lnet/codestage/actk/androidnative/CodeHashCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lnet/codestage/actk/androidnative/-$$Lambda$CodeHashGenerator$oEtDGUvIrFMOvldnkewxabtK-JU;->f$0:Lnet/codestage/actk/androidnative/CodeHashGenerator$HashCalculationResult;

    iget-object v1, p0, Lnet/codestage/actk/androidnative/-$$Lambda$CodeHashGenerator$oEtDGUvIrFMOvldnkewxabtK-JU;->f$1:Lnet/codestage/actk/androidnative/CodeHashCallback;

    invoke-static {v0, v1}, Lnet/codestage/actk/androidnative/CodeHashGenerator;->lambda$GetCodeHash$1(Lnet/codestage/actk/androidnative/CodeHashGenerator$HashCalculationResult;Lnet/codestage/actk/androidnative/CodeHashCallback;)V

    return-void
.end method
