.class public final Landroidx/datastore/preferences/protobuf/Type$Builder;
.super Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;
.source "Type.java"

# interfaces
.implements Landroidx/datastore/preferences/protobuf/TypeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/protobuf/Type;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder<",
        "Landroidx/datastore/preferences/protobuf/Type;",
        "Landroidx/datastore/preferences/protobuf/Type$Builder;",
        ">;",
        "Landroidx/datastore/preferences/protobuf/TypeOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 831
    invoke-static {}, Landroidx/datastore/preferences/protobuf/Type;->access$000()Landroidx/datastore/preferences/protobuf/Type;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;-><init>(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/datastore/preferences/protobuf/Type$1;)V
    .locals 0

    .line 824
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/Type$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllFields(Ljava/lang/Iterable;)Landroidx/datastore/preferences/protobuf/Type$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroidx/datastore/preferences/protobuf/Field;",
            ">;)",
            "Landroidx/datastore/preferences/protobuf/Type$Builder;"
        }
    .end annotation

    .line 1023
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Type$Builder;->copyOnWrite()V

    .line 1024
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Type$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Type;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Type;->access$1000(Landroidx/datastore/preferences/protobuf/Type;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllOneofs(Ljava/lang/Iterable;)Landroidx/datastore/preferences/protobuf/Type$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/datastore/preferences/protobuf/Type$Builder;"
        }
    .end annotation

    .line 1147
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Type$Builder;->copyOnWrite()V

    .line 1148
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Type$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Type;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Type;->access$1500(Landroidx/datastore/preferences/protobuf/Type;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllOptions(Ljava/lang/Iterable;)Landroidx/datastore/preferences/protobuf/Type$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroidx/datastore/preferences/protobuf/Option;",
            ">;)",
            "Landroidx/datastore/preferences/protobuf/Type$Builder;"
        }
    .end annotation

    .line 1299
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Type$Builder;->copyOnWrite()V

    .line 1300
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Type$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Type;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Type;->access$2400(Landroidx/datastore/preferences/protobuf/Type;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addFields(ILandroidx/datastore/preferences/protobuf/Field$Builder;)Landroidx/datastore/preferences/protobuf/Type$Builder;
    .locals 1

    .line 1010
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Type$Builder;->copyOnWrite()V

    .line 1011
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Type$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Type;

    invoke-static {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/Type;->access$900(Landroidx/datastore/preferences/protobuf/Type;ILandroidx/datastore/preferences/protobuf/Field$Builder;)V

    return-object p0
.end method

.method public addFields(ILandroidx/datastore/preferences/protobuf/Field;)Landroidx/datastore/preferences/protobuf/Type$Builder;
    .locals 1

    .line 984
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Type$Builder;->copyOnWrite()V

    .line 985
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Type$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Type;

    invoke-static {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/Type;->access$700(Landroidx/datastore/preferences/protobuf/Type;ILandroidx/datastore/preferences/protobuf/Field;)V

    return-object p0
.end method

.method public addFields(Landroidx/datastore/preferences/protobuf/Field$Builder;)Landroidx/datastore/preferences/protobuf/Type$Builder;
    .locals 1

    .line 997
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Type$Builder;->copyOnWrite()V

    .line 998
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Type$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Type;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Type;->access$800(Landroidx/datastore/preferences/protobuf/Type;Landroidx/datastore/preferences/protobuf/Field$Builder;)V

    return-object p0
.end method

.method public addFields(Landroidx/datastore/preferences/protobuf/Field;)Landroidx/datastore/preferences/protobuf/Type$Builder;
    .locals 1

    .line 971
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Type$Builder;->copyOnWrite()V

    .line 972
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Type$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Type;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Type;->access$600(Landroidx/datastore/preferences/protobuf/Type;Landroidx/datastore/preferences/protobuf/Field;)V

    return-object p0
.end method

.method public addOneofs(Ljava/lang/String;)Landroidx/datastore/preferences/protobuf/Type$Builder;
    .locals 1

    .line 1132
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Type$Builder;->copyOnWrite()V

    .line 1133
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Type$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Type;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Type;->access$1400(Landroidx/datastore/preferences/protobuf/Type;Ljava/lang/String;)V

    return-object p0
.end method

.method public addOneofsBytes(Landroidx/datastore/preferences/protobuf/ByteString;)Landroidx/datastore/preferences/protobuf/Type$Builder;
    .locals 1

    .line 1175
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Type$Builder;->copyOnWrite()V

    .line 1176
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Type$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Type;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Type;->access$1700(Landroidx/datastore/preferences/protobuf/Type;Landroidx/datastore/preferences/protobuf/ByteString;)V

    return-object p0
.end method

.method public addOptions(ILandroidx/datastore/preferences/protobuf/Option$Builder;)Landroidx/datastore/preferences/protobuf/Type$Builder;
    .locals 1

    .line 1286
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Type$Builder;->copyOnWrite()V

    .line 1287
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Type$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Type;

    invoke-static {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/Type;->access$2300(Landroidx/datastore/preferences/protobuf/Type;ILandroidx/datastore/preferences/protobuf/Option$Builder;)V

    return-object p0
.end method

.method public addOptions(ILandroidx/datastore/preferences/protobuf/Option;)Landroidx/datastore/preferences/protobuf/Type$Builder;
    .locals 1

    .line 1260
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Type$Builder;->copyOnWrite()V

    .line 1261
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Type$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Type;

    invoke-static {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/Type;->access$2100(Landroidx/datastore/preferences/protobuf/Type;ILandroidx/datastore/preferences/protobuf/Option;)V

    return-object p0
.end method

.method public addOptions(Landroidx/datastore/preferences/protobuf/Option$Builder;)Landroidx/datastore/preferences/protobuf/Type$Builder;
    .locals 1

    .line 1273
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Type$Builder;->copyOnWrite()V

    .line 1274
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Type$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Type;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Type;->access$2200(Landroidx/datastore/preferences/protobuf/Type;Landroidx/datastore/preferences/protobuf/Option$Builder;)V

    return-object p0
.end method

.method public addOptions(Landroidx/datastore/preferences/protobuf/Option;)Landroidx/datastore/preferences/protobuf/Type$Builder;
    .locals 1

    .line 1247
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Type$Builder;->copyOnWrite()V

    .line 1248
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Type$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Type;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Type;->access$2000(Landroidx/datastore/preferences/protobuf/Type;Landroidx/datastore/preferences/protobuf/Option;)V

    return-object p0
.end method

.method public clearFields()Landroidx/datastore/preferences/protobuf/Type$Builder;
    .locals 1

    .line 1035
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Type$Builder;->copyOnWrite()V

    .line 1036
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Type$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Type;

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/Type;->access$1100(Landroidx/datastore/preferences/protobuf/Type;)V

    return-object p0
.end method

.method public clearName()Landroidx/datastore/preferences/protobuf/Type$Builder;
    .locals 1

    .line 884
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Type$Builder;->copyOnWrite()V

    .line 885
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Type$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Type;

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/Type;->access$200(Landroidx/datastore/preferences/protobuf/Type;)V

    return-object p0
.end method

.method public clearOneofs()Landroidx/datastore/preferences/protobuf/Type$Builder;
    .locals 1

    .line 1160
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Type$Builder;->copyOnWrite()V

    .line 1161
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Type$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Type;

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/Type;->access$1600(Landroidx/datastore/preferences/protobuf/Type;)V

    return-object p0
.end method

.method public clearOptions()Landroidx/datastore/preferences/protobuf/Type$Builder;
    .locals 1

    .line 1311
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Type$Builder;->copyOnWrite()V

    .line 1312
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Type$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Type;

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/Type;->access$2500(Landroidx/datastore/preferences/protobuf/Type;)V

    return-object p0
.end method

.method public clearSourceContext()Landroidx/datastore/preferences/protobuf/Type$Builder;
    .locals 1

    .line 1394
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Type$Builder;->copyOnWrite()V

    .line 1395
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Type$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Type;

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/Type;->access$3000(Landroidx/datastore/preferences/protobuf/Type;)V

    return-object p0
.end method

.method public clearSyntax()Landroidx/datastore/preferences/protobuf/Type$Builder;
    .locals 1

    .line 1460
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Type$Builder;->copyOnWrite()V

    .line 1461
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Type$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Type;

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/Type;->access$3300(Landroidx/datastore/preferences/protobuf/Type;)V

    return-object p0
.end method

.method public getFields(I)Landroidx/datastore/preferences/protobuf/Field;
    .locals 1

    .line 935
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Type$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Type;

    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/Type;->getFields(I)Landroidx/datastore/preferences/protobuf/Field;

    move-result-object p1

    return-object p1
.end method

.method public getFieldsCount()I
    .locals 1

    .line 925
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Type$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Type;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Type;->getFieldsCount()I

    move-result v0

    return v0
.end method

.method public getFieldsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/datastore/preferences/protobuf/Field;",
            ">;"
        }
    .end annotation

    .line 913
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Type$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Type;

    .line 914
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Type;->getFieldsList()Ljava/util/List;

    move-result-object v0

    .line 913
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 845
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Type$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Type;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Type;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameBytes()Landroidx/datastore/preferences/protobuf/ByteString;
    .locals 1

    .line 858
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Type$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Type;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Type;->getNameBytes()Landroidx/datastore/preferences/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getOneofs(I)Ljava/lang/String;
    .locals 1

    .line 1089
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Type$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Type;

    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/Type;->getOneofs(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getOneofsBytes(I)Landroidx/datastore/preferences/protobuf/ByteString;
    .locals 1

    .line 1103
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Type$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Type;

    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/Type;->getOneofsBytes(I)Landroidx/datastore/preferences/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getOneofsCount()I
    .locals 1

    .line 1076
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Type$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Type;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Type;->getOneofsCount()I

    move-result v0

    return v0
.end method

.method public getOneofsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1063
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Type$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Type;

    .line 1064
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Type;->getOneofsList()Ljava/util/List;

    move-result-object v0

    .line 1063
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getOptions(I)Landroidx/datastore/preferences/protobuf/Option;
    .locals 1

    .line 1211
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Type$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Type;

    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/Type;->getOptions(I)Landroidx/datastore/preferences/protobuf/Option;

    move-result-object p1

    return-object p1
.end method

.method public getOptionsCount()I
    .locals 1

    .line 1201
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Type$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Type;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Type;->getOptionsCount()I

    move-result v0

    return v0
.end method

.method public getOptionsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/datastore/preferences/protobuf/Option;",
            ">;"
        }
    .end annotation

    .line 1189
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Type$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Type;

    .line 1190
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Type;->getOptionsList()Ljava/util/List;

    move-result-object v0

    .line 1189
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSourceContext()Landroidx/datastore/preferences/protobuf/SourceContext;
    .locals 1

    .line 1348
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Type$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Type;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Type;->getSourceContext()Landroidx/datastore/preferences/protobuf/SourceContext;

    move-result-object v0

    return-object v0
.end method

.method public getSyntax()Landroidx/datastore/preferences/protobuf/Syntax;
    .locals 1

    .line 1435
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Type$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Type;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Type;->getSyntax()Landroidx/datastore/preferences/protobuf/Syntax;

    move-result-object v0

    return-object v0
.end method

.method public getSyntaxValue()I
    .locals 1

    .line 1409
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Type$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Type;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Type;->getSyntaxValue()I

    move-result v0

    return v0
.end method

.method public hasSourceContext()Z
    .locals 1

    .line 1337
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Type$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Type;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Type;->hasSourceContext()Z

    move-result v0

    return v0
.end method

.method public mergeSourceContext(Landroidx/datastore/preferences/protobuf/SourceContext;)Landroidx/datastore/preferences/protobuf/Type$Builder;
    .locals 1

    .line 1383
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Type$Builder;->copyOnWrite()V

    .line 1384
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Type$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Type;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Type;->access$2900(Landroidx/datastore/preferences/protobuf/Type;Landroidx/datastore/preferences/protobuf/SourceContext;)V

    return-object p0
.end method

.method public removeFields(I)Landroidx/datastore/preferences/protobuf/Type$Builder;
    .locals 1

    .line 1047
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Type$Builder;->copyOnWrite()V

    .line 1048
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Type$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Type;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Type;->access$1200(Landroidx/datastore/preferences/protobuf/Type;I)V

    return-object p0
.end method

.method public removeOptions(I)Landroidx/datastore/preferences/protobuf/Type$Builder;
    .locals 1

    .line 1323
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Type$Builder;->copyOnWrite()V

    .line 1324
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Type$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Type;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Type;->access$2600(Landroidx/datastore/preferences/protobuf/Type;I)V

    return-object p0
.end method

.method public setFields(ILandroidx/datastore/preferences/protobuf/Field$Builder;)Landroidx/datastore/preferences/protobuf/Type$Builder;
    .locals 1

    .line 959
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Type$Builder;->copyOnWrite()V

    .line 960
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Type$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Type;

    invoke-static {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/Type;->access$500(Landroidx/datastore/preferences/protobuf/Type;ILandroidx/datastore/preferences/protobuf/Field$Builder;)V

    return-object p0
.end method

.method public setFields(ILandroidx/datastore/preferences/protobuf/Field;)Landroidx/datastore/preferences/protobuf/Type$Builder;
    .locals 1

    .line 946
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Type$Builder;->copyOnWrite()V

    .line 947
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Type$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Type;

    invoke-static {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/Type;->access$400(Landroidx/datastore/preferences/protobuf/Type;ILandroidx/datastore/preferences/protobuf/Field;)V

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Landroidx/datastore/preferences/protobuf/Type$Builder;
    .locals 1

    .line 871
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Type$Builder;->copyOnWrite()V

    .line 872
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Type$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Type;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Type;->access$100(Landroidx/datastore/preferences/protobuf/Type;Ljava/lang/String;)V

    return-object p0
.end method

.method public setNameBytes(Landroidx/datastore/preferences/protobuf/ByteString;)Landroidx/datastore/preferences/protobuf/Type$Builder;
    .locals 1

    .line 899
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Type$Builder;->copyOnWrite()V

    .line 900
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Type$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Type;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Type;->access$300(Landroidx/datastore/preferences/protobuf/Type;Landroidx/datastore/preferences/protobuf/ByteString;)V

    return-object p0
.end method

.method public setOneofs(ILjava/lang/String;)Landroidx/datastore/preferences/protobuf/Type$Builder;
    .locals 1

    .line 1117
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Type$Builder;->copyOnWrite()V

    .line 1118
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Type$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Type;

    invoke-static {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/Type;->access$1300(Landroidx/datastore/preferences/protobuf/Type;ILjava/lang/String;)V

    return-object p0
.end method

.method public setOptions(ILandroidx/datastore/preferences/protobuf/Option$Builder;)Landroidx/datastore/preferences/protobuf/Type$Builder;
    .locals 1

    .line 1235
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Type$Builder;->copyOnWrite()V

    .line 1236
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Type$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Type;

    invoke-static {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/Type;->access$1900(Landroidx/datastore/preferences/protobuf/Type;ILandroidx/datastore/preferences/protobuf/Option$Builder;)V

    return-object p0
.end method

.method public setOptions(ILandroidx/datastore/preferences/protobuf/Option;)Landroidx/datastore/preferences/protobuf/Type$Builder;
    .locals 1

    .line 1222
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Type$Builder;->copyOnWrite()V

    .line 1223
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Type$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Type;

    invoke-static {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/Type;->access$1800(Landroidx/datastore/preferences/protobuf/Type;ILandroidx/datastore/preferences/protobuf/Option;)V

    return-object p0
.end method

.method public setSourceContext(Landroidx/datastore/preferences/protobuf/SourceContext$Builder;)Landroidx/datastore/preferences/protobuf/Type$Builder;
    .locals 1

    .line 1371
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Type$Builder;->copyOnWrite()V

    .line 1372
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Type$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Type;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Type;->access$2800(Landroidx/datastore/preferences/protobuf/Type;Landroidx/datastore/preferences/protobuf/SourceContext$Builder;)V

    return-object p0
.end method

.method public setSourceContext(Landroidx/datastore/preferences/protobuf/SourceContext;)Landroidx/datastore/preferences/protobuf/Type$Builder;
    .locals 1

    .line 1358
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Type$Builder;->copyOnWrite()V

    .line 1359
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Type$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Type;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Type;->access$2700(Landroidx/datastore/preferences/protobuf/Type;Landroidx/datastore/preferences/protobuf/SourceContext;)V

    return-object p0
.end method

.method public setSyntax(Landroidx/datastore/preferences/protobuf/Syntax;)Landroidx/datastore/preferences/protobuf/Type$Builder;
    .locals 1

    .line 1447
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Type$Builder;->copyOnWrite()V

    .line 1448
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Type$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Type;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Type;->access$3200(Landroidx/datastore/preferences/protobuf/Type;Landroidx/datastore/preferences/protobuf/Syntax;)V

    return-object p0
.end method

.method public setSyntaxValue(I)Landroidx/datastore/preferences/protobuf/Type$Builder;
    .locals 1

    .line 1421
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Type$Builder;->copyOnWrite()V

    .line 1422
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Type$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Type;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Type;->access$3100(Landroidx/datastore/preferences/protobuf/Type;I)V

    return-object p0
.end method
