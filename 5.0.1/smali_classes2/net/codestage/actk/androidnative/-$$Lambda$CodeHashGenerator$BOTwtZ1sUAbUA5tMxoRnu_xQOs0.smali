.class public final synthetic Lnet/codestage/actk/androidnative/-$$Lambda$CodeHashGenerator$BOTwtZ1sUAbUA5tMxoRnu_xQOs0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/CompletionService;

.field public final synthetic f$1:Landroid/os/Handler;

.field public final synthetic f$2:Lnet/codestage/actk/androidnative/CodeHashCallback;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/CompletionService;Landroid/os/Handler;Lnet/codestage/actk/androidnative/CodeHashCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/codestage/actk/androidnative/-$$Lambda$CodeHashGenerator$BOTwtZ1sUAbUA5tMxoRnu_xQOs0;->f$0:Ljava/util/concurrent/CompletionService;

    iput-object p2, p0, Lnet/codestage/actk/androidnative/-$$Lambda$CodeHashGenerator$BOTwtZ1sUAbUA5tMxoRnu_xQOs0;->f$1:Landroid/os/Handler;

    iput-object p3, p0, Lnet/codestage/actk/androidnative/-$$Lambda$CodeHashGenerator$BOTwtZ1sUAbUA5tMxoRnu_xQOs0;->f$2:Lnet/codestage/actk/androidnative/CodeHashCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lnet/codestage/actk/androidnative/-$$Lambda$CodeHashGenerator$BOTwtZ1sUAbUA5tMxoRnu_xQOs0;->f$0:Ljava/util/concurrent/CompletionService;

    iget-object v1, p0, Lnet/codestage/actk/androidnative/-$$Lambda$CodeHashGenerator$BOTwtZ1sUAbUA5tMxoRnu_xQOs0;->f$1:Landroid/os/Handler;

    iget-object v2, p0, Lnet/codestage/actk/androidnative/-$$Lambda$CodeHashGenerator$BOTwtZ1sUAbUA5tMxoRnu_xQOs0;->f$2:Lnet/codestage/actk/androidnative/CodeHashCallback;

    invoke-static {v0, v1, v2}, Lnet/codestage/actk/androidnative/CodeHashGenerator;->lambda$GetCodeHash$2(Ljava/util/concurrent/CompletionService;Landroid/os/Handler;Lnet/codestage/actk/androidnative/CodeHashCallback;)V

    return-void
.end method
