.class public Laoc;
.super Ljava/lang/Object;
.source "MiguConstant.java"


# static fields
.field public static a:Z

.field public static b:J

.field public static final c:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-boolean v0, Laoc;->a:Z

    .line 20
    const-wide/16 v0, 0x0

    sput-wide v0, Laoc;->b:J

    .line 98
    invoke-static {}, Laoc;->a()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Laoc;->c:Ljava/util/Map;

    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .locals 3
    .param p0, "errorCode"    # I

    .prologue
    .line 125
    sget-object v1, Laoc;->c:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, "info":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    const-string/jumbo v0, "\u672a\u77e5\u9519\u8bef"

    .line 130
    :cond_0
    return-object v0
.end method

.method public static a()Ljava/util/Map;
    .locals 3

    .prologue
    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 103
    .local v0, "map":Ljava/util/Map;
    const/16 v1, 0x7d0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "\u7528\u6237\u62d2\u7edd\u7f51\u5173\u9274\u6743\u767b\u5f55(\u7528\u6237\u624b\u52a8\u767b\u51fa)"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const/16 v1, 0x7d1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "\u672c\u6b21\u53f7\u7801\u548c\u7f13\u5b58\u53f7\u7801\u4e0d\u4e00\u81f4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const/16 v1, 0x7d2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "\u672c\u6b21\u9274\u6743\u8ddd\u79bb\u4e0a\u6b21\u9274\u6743\u6210\u529f\u4e0d\u8db324\u5c0f\u65f6"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const/16 v1, 0x7d3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "\u672c\u6b21Token\u5df2\u7ecf\u5931\u6548\uff0c\u5219\u8d70\u81ea\u52a8\u9000\u51fa\u903b\u8f91"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const/16 v1, 0x7d4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "\u77ed\u4fe1\u9274\u6743\u4e3b\u52a8\u7ec8\u6b62"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const/16 v1, 0x7d5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "\u7f51\u7edc\u4e0d\u662f\u79fb\u52a8\u7f51\u7edc"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const/16 v1, 0x7d6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "\u7f51\u5173\u900f\u4f20\u83b7\u53d6token\u5931\u8d25"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const/16 v1, 0x7d7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "\u9274\u6743\u4efb\u52a1\u6b63\u5728\u8fd0\u884c"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const/16 v1, 0x7d8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "\u63a5\u53e3\u8c03\u7528\u5931\u8d25"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const/16 v1, 0x7d9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "\u54aa\u5495SDK\u9274\u6743\u5931\u8d25\uff08\u5f02\u5e38\uff09"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const/16 v1, 0x7da

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "\u54aa\u5495\u9274\u6743\u7ed3\u679c\u9519\u8bef"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const/16 v1, 0x7db

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "\u54aa\u5495\u9274\u6743Token\u4e0e\u7f13\u5b58\u4e0d\u4e00\u81f4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const/16 v1, 0x7dc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "\u7075\u7280Token\u662f\u8001Token,\u4e0d\u8fdb\u884c\u7eed\u6709\u6548\u671f"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    const/16 v1, 0x7dd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "\u7075\u7280\u56e0\u4e3aKS\u9519\u8bef\u91cd\u8bd5\u5df2\u7ecf\u8fbe\u5230\u6700\u5927\u4e0a\u9650\uff0c\u4e0d\u518d\u8fdb\u884c"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    const/16 v1, 0x7de

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "\u7075\u7280\u56e0\u4e3a\u65e0\u7f51\u7edc\uff0c\u65e0\u6cd5\u5347\u7ea7\uff0c\u7b49\u5f85\u4e0b\u6b21\u6709\u7f51\u7edc\u65f6\u5347\u7ea7"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    const/16 v1, 0x7df

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "migu cleanSSO\u5931\u8d25"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    const/16 v1, 0x7e0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "\u975e\u624b\u673a\u53f7\u7801\u767b\u5f55\uff0c\u4e0d\u8fdb\u884c\u7eed\u6709\u6548\u671f"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    return-object v0
.end method
