.class final Landroidx/datastore/preferences/protobuf/Syntax$1;
.super Ljava/lang/Object;
.source "Syntax.java"

# interfaces
.implements Landroidx/datastore/preferences/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/protobuf/Syntax;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/datastore/preferences/protobuf/Internal$EnumLiteMap<",
        "Landroidx/datastore/preferences/protobuf/Syntax;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic findValueByNumber(I)Landroidx/datastore/preferences/protobuf/Internal$EnumLite;
    .locals 0

    .line 85
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/Syntax$1;->findValueByNumber(I)Landroidx/datastore/preferences/protobuf/Syntax;

    move-result-object p1

    return-object p1
.end method

.method public findValueByNumber(I)Landroidx/datastore/preferences/protobuf/Syntax;
    .locals 0

    .line 88
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/Syntax;->forNumber(I)Landroidx/datastore/preferences/protobuf/Syntax;

    move-result-object p1

    return-object p1
.end method
