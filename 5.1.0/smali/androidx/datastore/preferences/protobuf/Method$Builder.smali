.class public final Landroidx/datastore/preferences/protobuf/Method$Builder;
.super Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;
.source "Method.java"

# interfaces
.implements Landroidx/datastore/preferences/protobuf/MethodOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/protobuf/Method;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder<",
        "Landroidx/datastore/preferences/protobuf/Method;",
        "Landroidx/datastore/preferences/protobuf/Method$Builder;",
        ">;",
        "Landroidx/datastore/preferences/protobuf/MethodOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 655
    invoke-static {}, Landroidx/datastore/preferences/protobuf/Method;->access$000()Landroidx/datastore/preferences/protobuf/Method;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;-><init>(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/datastore/preferences/protobuf/Method$1;)V
    .locals 0

    .line 648
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/Method$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllOptions(Ljava/lang/Iterable;)Landroidx/datastore/preferences/protobuf/Method$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroidx/datastore/preferences/protobuf/Option;",
            ">;)",
            "Landroidx/datastore/preferences/protobuf/Method$Builder;"
        }
    .end annotation

    .line 1065
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Method$Builder;->copyOnWrite()V

    .line 1066
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Method$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Method;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Method;->access$2000(Landroidx/datastore/preferences/protobuf/Method;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addOptions(ILandroidx/datastore/preferences/protobuf/Option$Builder;)Landroidx/datastore/preferences/protobuf/Method$Builder;
    .locals 1

    .line 1052
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Method$Builder;->copyOnWrite()V

    .line 1053
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Method$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Method;

    invoke-static {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/Method;->access$1900(Landroidx/datastore/preferences/protobuf/Method;ILandroidx/datastore/preferences/protobuf/Option$Builder;)V

    return-object p0
.end method

.method public addOptions(ILandroidx/datastore/preferences/protobuf/Option;)Landroidx/datastore/preferences/protobuf/Method$Builder;
    .locals 1

    .line 1026
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Method$Builder;->copyOnWrite()V

    .line 1027
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Method$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Method;

    invoke-static {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/Method;->access$1700(Landroidx/datastore/preferences/protobuf/Method;ILandroidx/datastore/preferences/protobuf/Option;)V

    return-object p0
.end method

.method public addOptions(Landroidx/datastore/preferences/protobuf/Option$Builder;)Landroidx/datastore/preferences/protobuf/Method$Builder;
    .locals 1

    .line 1039
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Method$Builder;->copyOnWrite()V

    .line 1040
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Method$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Method;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Method;->access$1800(Landroidx/datastore/preferences/protobuf/Method;Landroidx/datastore/preferences/protobuf/Option$Builder;)V

    return-object p0
.end method

.method public addOptions(Landroidx/datastore/preferences/protobuf/Option;)Landroidx/datastore/preferences/protobuf/Method$Builder;
    .locals 1

    .line 1013
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Method$Builder;->copyOnWrite()V

    .line 1014
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Method$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Method;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Method;->access$1600(Landroidx/datastore/preferences/protobuf/Method;Landroidx/datastore/preferences/protobuf/Option;)V

    return-object p0
.end method

.method public clearName()Landroidx/datastore/preferences/protobuf/Method$Builder;
    .locals 1

    .line 708
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Method$Builder;->copyOnWrite()V

    .line 709
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Method$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Method;

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/Method;->access$200(Landroidx/datastore/preferences/protobuf/Method;)V

    return-object p0
.end method

.method public clearOptions()Landroidx/datastore/preferences/protobuf/Method$Builder;
    .locals 1

    .line 1077
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Method$Builder;->copyOnWrite()V

    .line 1078
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Method$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Method;

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/Method;->access$2100(Landroidx/datastore/preferences/protobuf/Method;)V

    return-object p0
.end method

.method public clearRequestStreaming()Landroidx/datastore/preferences/protobuf/Method$Builder;
    .locals 1

    .line 832
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Method$Builder;->copyOnWrite()V

    .line 833
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Method$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Method;

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/Method;->access$800(Landroidx/datastore/preferences/protobuf/Method;)V

    return-object p0
.end method

.method public clearRequestTypeUrl()Landroidx/datastore/preferences/protobuf/Method$Builder;
    .locals 1

    .line 777
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Method$Builder;->copyOnWrite()V

    .line 778
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Method$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Method;

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/Method;->access$500(Landroidx/datastore/preferences/protobuf/Method;)V

    return-object p0
.end method

.method public clearResponseStreaming()Landroidx/datastore/preferences/protobuf/Method$Builder;
    .locals 1

    .line 941
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Method$Builder;->copyOnWrite()V

    .line 942
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Method$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Method;

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/Method;->access$1300(Landroidx/datastore/preferences/protobuf/Method;)V

    return-object p0
.end method

.method public clearResponseTypeUrl()Landroidx/datastore/preferences/protobuf/Method$Builder;
    .locals 1

    .line 886
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Method$Builder;->copyOnWrite()V

    .line 887
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Method$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Method;

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/Method;->access$1000(Landroidx/datastore/preferences/protobuf/Method;)V

    return-object p0
.end method

.method public clearSyntax()Landroidx/datastore/preferences/protobuf/Method$Builder;
    .locals 1

    .line 1155
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Method$Builder;->copyOnWrite()V

    .line 1156
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Method$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Method;

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/Method;->access$2500(Landroidx/datastore/preferences/protobuf/Method;)V

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 669
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Method$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Method;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Method;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameBytes()Landroidx/datastore/preferences/protobuf/ByteString;
    .locals 1

    .line 682
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Method$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Method;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Method;->getNameBytes()Landroidx/datastore/preferences/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getOptions(I)Landroidx/datastore/preferences/protobuf/Option;
    .locals 1

    .line 977
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Method$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Method;

    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/Method;->getOptions(I)Landroidx/datastore/preferences/protobuf/Option;

    move-result-object p1

    return-object p1
.end method

.method public getOptionsCount()I
    .locals 1

    .line 967
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Method$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Method;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Method;->getOptionsCount()I

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

    .line 955
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Method$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Method;

    .line 956
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Method;->getOptionsList()Ljava/util/List;

    move-result-object v0

    .line 955
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRequestStreaming()Z
    .locals 1

    .line 807
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Method$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Method;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Method;->getRequestStreaming()Z

    move-result v0

    return v0
.end method

.method public getRequestTypeUrl()Ljava/lang/String;
    .locals 1

    .line 738
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Method$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Method;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Method;->getRequestTypeUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestTypeUrlBytes()Landroidx/datastore/preferences/protobuf/ByteString;
    .locals 1

    .line 751
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Method$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Method;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Method;->getRequestTypeUrlBytes()Landroidx/datastore/preferences/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getResponseStreaming()Z
    .locals 1

    .line 916
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Method$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Method;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Method;->getResponseStreaming()Z

    move-result v0

    return v0
.end method

.method public getResponseTypeUrl()Ljava/lang/String;
    .locals 1

    .line 847
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Method$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Method;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Method;->getResponseTypeUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResponseTypeUrlBytes()Landroidx/datastore/preferences/protobuf/ByteString;
    .locals 1

    .line 860
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Method$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Method;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Method;->getResponseTypeUrlBytes()Landroidx/datastore/preferences/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSyntax()Landroidx/datastore/preferences/protobuf/Syntax;
    .locals 1

    .line 1130
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Method$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Method;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Method;->getSyntax()Landroidx/datastore/preferences/protobuf/Syntax;

    move-result-object v0

    return-object v0
.end method

.method public getSyntaxValue()I
    .locals 1

    .line 1104
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Method$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Method;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Method;->getSyntaxValue()I

    move-result v0

    return v0
.end method

.method public removeOptions(I)Landroidx/datastore/preferences/protobuf/Method$Builder;
    .locals 1

    .line 1089
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Method$Builder;->copyOnWrite()V

    .line 1090
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Method$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Method;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Method;->access$2200(Landroidx/datastore/preferences/protobuf/Method;I)V

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Landroidx/datastore/preferences/protobuf/Method$Builder;
    .locals 1

    .line 695
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Method$Builder;->copyOnWrite()V

    .line 696
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Method$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Method;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Method;->access$100(Landroidx/datastore/preferences/protobuf/Method;Ljava/lang/String;)V

    return-object p0
.end method

.method public setNameBytes(Landroidx/datastore/preferences/protobuf/ByteString;)Landroidx/datastore/preferences/protobuf/Method$Builder;
    .locals 1

    .line 723
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Method$Builder;->copyOnWrite()V

    .line 724
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Method$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Method;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Method;->access$300(Landroidx/datastore/preferences/protobuf/Method;Landroidx/datastore/preferences/protobuf/ByteString;)V

    return-object p0
.end method

.method public setOptions(ILandroidx/datastore/preferences/protobuf/Option$Builder;)Landroidx/datastore/preferences/protobuf/Method$Builder;
    .locals 1

    .line 1001
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Method$Builder;->copyOnWrite()V

    .line 1002
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Method$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Method;

    invoke-static {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/Method;->access$1500(Landroidx/datastore/preferences/protobuf/Method;ILandroidx/datastore/preferences/protobuf/Option$Builder;)V

    return-object p0
.end method

.method public setOptions(ILandroidx/datastore/preferences/protobuf/Option;)Landroidx/datastore/preferences/protobuf/Method$Builder;
    .locals 1

    .line 988
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Method$Builder;->copyOnWrite()V

    .line 989
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Method$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Method;

    invoke-static {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/Method;->access$1400(Landroidx/datastore/preferences/protobuf/Method;ILandroidx/datastore/preferences/protobuf/Option;)V

    return-object p0
.end method

.method public setRequestStreaming(Z)Landroidx/datastore/preferences/protobuf/Method$Builder;
    .locals 1

    .line 819
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Method$Builder;->copyOnWrite()V

    .line 820
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Method$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Method;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Method;->access$700(Landroidx/datastore/preferences/protobuf/Method;Z)V

    return-object p0
.end method

.method public setRequestTypeUrl(Ljava/lang/String;)Landroidx/datastore/preferences/protobuf/Method$Builder;
    .locals 1

    .line 764
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Method$Builder;->copyOnWrite()V

    .line 765
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Method$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Method;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Method;->access$400(Landroidx/datastore/preferences/protobuf/Method;Ljava/lang/String;)V

    return-object p0
.end method

.method public setRequestTypeUrlBytes(Landroidx/datastore/preferences/protobuf/ByteString;)Landroidx/datastore/preferences/protobuf/Method$Builder;
    .locals 1

    .line 792
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Method$Builder;->copyOnWrite()V

    .line 793
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Method$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Method;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Method;->access$600(Landroidx/datastore/preferences/protobuf/Method;Landroidx/datastore/preferences/protobuf/ByteString;)V

    return-object p0
.end method

.method public setResponseStreaming(Z)Landroidx/datastore/preferences/protobuf/Method$Builder;
    .locals 1

    .line 928
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Method$Builder;->copyOnWrite()V

    .line 929
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Method$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Method;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Method;->access$1200(Landroidx/datastore/preferences/protobuf/Method;Z)V

    return-object p0
.end method

.method public setResponseTypeUrl(Ljava/lang/String;)Landroidx/datastore/preferences/protobuf/Method$Builder;
    .locals 1

    .line 873
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Method$Builder;->copyOnWrite()V

    .line 874
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Method$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Method;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Method;->access$900(Landroidx/datastore/preferences/protobuf/Method;Ljava/lang/String;)V

    return-object p0
.end method

.method public setResponseTypeUrlBytes(Landroidx/datastore/preferences/protobuf/ByteString;)Landroidx/datastore/preferences/protobuf/Method$Builder;
    .locals 1

    .line 901
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Method$Builder;->copyOnWrite()V

    .line 902
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Method$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Method;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Method;->access$1100(Landroidx/datastore/preferences/protobuf/Method;Landroidx/datastore/preferences/protobuf/ByteString;)V

    return-object p0
.end method

.method public setSyntax(Landroidx/datastore/preferences/protobuf/Syntax;)Landroidx/datastore/preferences/protobuf/Method$Builder;
    .locals 1

    .line 1142
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Method$Builder;->copyOnWrite()V

    .line 1143
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Method$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Method;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Method;->access$2400(Landroidx/datastore/preferences/protobuf/Method;Landroidx/datastore/preferences/protobuf/Syntax;)V

    return-object p0
.end method

.method public setSyntaxValue(I)Landroidx/datastore/preferences/protobuf/Method$Builder;
    .locals 1

    .line 1116
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Method$Builder;->copyOnWrite()V

    .line 1117
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Method$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Method;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Method;->access$2300(Landroidx/datastore/preferences/protobuf/Method;I)V

    return-object p0
.end method
