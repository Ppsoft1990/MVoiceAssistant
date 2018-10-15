.class Lamp$1;
.super Lamq;
.source "BookBizManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lamp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lamp;


# direct methods
.method constructor <init>(Lamp;)V
    .locals 0
    .param p1, "this$0"    # Lamp;

    .prologue
    .line 984
    iput-object p1, p0, Lamp$1;->a:Lamp;

    invoke-direct {p0}, Lamq;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddCollectResult(Ljava/lang/String;Ljava/lang/String;Lamo$a;)V
    .locals 2
    .param p1, "contentId"    # Ljava/lang/String;
    .param p2, "cid"    # Ljava/lang/String;
    .param p3, "bookMark"    # Lamo$a;

    .prologue
    .line 1214
    const-string/jumbo v0, "BookBizPresenter"

    const-string/jumbo v1, "onAddCollectResult "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    const-string/jumbo v0, "BookBizPresenter"

    const-string/jumbo v1, "onAddBookMarkResult USER_BOOK_MARK success"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    iget-object v0, p0, Lamp$1;->a:Lamp;

    invoke-virtual {v0, p1, p2, p3}, Lamp;->a(Ljava/lang/String;Ljava/lang/String;Lamo$a;)V

    .line 1217
    return-void
.end method

.method public onBuyResult(Ljava/lang/String;)V
    .locals 5
    .param p1, "resultCode"    # Ljava/lang/String;

    .prologue
    .line 1259
    const-string/jumbo v3, "0201"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1261
    iget-object v3, p0, Lamp$1;->a:Lamp;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lamp;->a(Ljava/lang/String;)V

    .line 1264
    :cond_0
    iget-object v3, p0, Lamp$1;->a:Lamp;

    invoke-static {v3}, Lamp;->b(Lamp;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1265
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lamh;>;>;"
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1266
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1267
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lamh;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lamh;

    .line 1268
    .local v0, "bookView":Lamh;
    if-eqz v0, :cond_1

    .line 1269
    invoke-interface {v0, p1}, Lamh;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 1272
    .end local v0    # "bookView":Lamh;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lamh;>;"
    :cond_2
    return-void
.end method

.method public onChapterInfoResult(Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;)V
    .locals 8
    .param p1, "chapterAudio"    # Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;

    .prologue
    .line 993
    const-string/jumbo v3, "BookBizPresenter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onChapterInfoResult chapterAudio "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    if-eqz p1, :cond_3

    .line 996
    iget-object v3, p0, Lamp$1;->a:Lamp;

    invoke-static {v3}, Lamp;->a(Lamp;)Lamk;

    move-result-object v3

    invoke-virtual {v3, p1}, Lamk;->a(Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;)V

    .line 999
    iget-object v3, p0, Lamp$1;->a:Lamp;

    invoke-static {v3}, Lamp;->b(Lamp;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1000
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lamh;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1001
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1002
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lamh;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lamh;

    .line 1003
    .local v0, "bookView":Lamh;
    if-eqz v0, :cond_0

    .line 1004
    invoke-interface {v0, p1}, Lamh;->a(Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;)V

    goto :goto_0

    .line 1010
    .end local v0    # "bookView":Lamh;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lamh;>;"
    :cond_1
    iget-object v3, p0, Lamp$1;->a:Lamp;

    invoke-static {v3}, Lamp;->c(Lamp;)Larc;

    move-result-object v3

    invoke-virtual {v3}, Larc;->f()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1011
    const-string/jumbo v3, "BookBizPresenter"

    const-string/jumbo v4, "isServiceBound false, delay perform"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    iget-object v3, p0, Lamp$1;->a:Lamp;

    invoke-static {v3}, Lamp;->d(Lamp;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lamp$1$1;

    invoke-direct {v4, p0, p1}, Lamp$1$1;-><init>(Lamp$1;Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;)V

    const-wide/16 v6, 0x7d0

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1031
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lamh;>;>;"
    :goto_1
    return-void

    .line 1026
    .restart local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lamh;>;>;"
    :cond_2
    iget-object v3, p0, Lamp$1;->a:Lamp;

    invoke-static {v3, p1}, Lamp;->a(Lamp;Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;)V

    goto :goto_1

    .line 1029
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lamh;>;>;"
    :cond_3
    iget-object v3, p0, Lamp$1;->a:Lamp;

    const/16 v4, 0x3f0

    invoke-static {v3, v4}, Lamp;->a(Lamp;I)V

    goto :goto_1
.end method

.method public onChapterListResult(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/listenbook/entity/Chapter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1120
    .local p1, "chapters":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/listenbook/entity/Chapter;>;"
    const-string/jumbo v3, "BookBizPresenter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onChargeInfoResult chapters "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 1124
    iget-object v3, p0, Lamp$1;->a:Lamp;

    invoke-static {v3}, Lamp;->a(Lamp;)Lamk;

    move-result-object v3

    invoke-virtual {v3, p1}, Lamk;->a(Ljava/util/List;)I

    .line 1127
    iget-object v3, p0, Lamp$1;->a:Lamp;

    invoke-static {v3, p1}, Lamp;->a(Lamp;Ljava/util/List;)V

    .line 1129
    iget-object v3, p0, Lamp$1;->a:Lamp;

    invoke-static {v3}, Lamp;->b(Lamp;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1130
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lamh;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1131
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1132
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lamh;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lamh;

    .line 1133
    .local v0, "bookView":Lamh;
    if-eqz v0, :cond_0

    .line 1134
    invoke-interface {v0}, Lamh;->c()V

    goto :goto_0

    .line 1138
    .end local v0    # "bookView":Lamh;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lamh;>;"
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lamh;>;>;"
    :cond_1
    iget-object v3, p0, Lamp$1;->a:Lamp;

    const/16 v4, 0x3f1

    invoke-static {v3, v4}, Lamp;->a(Lamp;I)V

    .line 1140
    :cond_2
    return-void
.end method

.method public onChargeInfoResult(Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;)V
    .locals 9
    .param p1, "chargeInfo"    # Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;

    .prologue
    .line 1035
    const-string/jumbo v6, "BookBizPresenter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onChargeInfoResult chargeInfo "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    if-eqz p1, :cond_3

    .line 1038
    invoke-virtual {p1}, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;->d()Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$Audition;

    move-result-object v0

    .line 1039
    .local v0, "audition":Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$Audition;
    if-eqz v0, :cond_1

    .line 1041
    iget-object v6, p0, Lamp$1;->a:Lamp;

    invoke-static {v6}, Lamp;->e(Lamp;)Lams;

    move-result-object v6

    const-string/jumbo v7, "listenbook_ending_audition_url"

    invoke-virtual {v6, v7}, Lams;->b(Ljava/lang/String;)J

    .line 1043
    new-instance v1, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;

    invoke-direct {v1}, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;-><init>()V

    .line 1045
    .local v1, "chapterAudio":Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1046
    .local v3, "chapterStreams":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/listenbook/entity/ChapterStream;>;"
    new-instance v2, Lcom/iflytek/viafly/listenbook/entity/ChapterStream;

    invoke-direct {v2}, Lcom/iflytek/viafly/listenbook/entity/ChapterStream;-><init>()V

    .line 1047
    .local v2, "chapterStream":Lcom/iflytek/viafly/listenbook/entity/ChapterStream;
    invoke-virtual {v0}, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$Audition;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/iflytek/viafly/listenbook/entity/ChapterStream;->a(Ljava/lang/String;)V

    .line 1048
    invoke-virtual {v0}, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$Audition;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/iflytek/viafly/listenbook/entity/ChapterStream;->b(Ljava/lang/String;)V

    .line 1049
    invoke-virtual {v0}, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$Audition;->c()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/iflytek/viafly/listenbook/entity/ChapterStream;->a(I)V

    .line 1050
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1051
    invoke-virtual {p1}, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;->a()Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$ProductinfoBean;

    move-result-object v6

    invoke-virtual {v6}, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$ProductinfoBean;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;->l(Ljava/lang/String;)V

    .line 1052
    invoke-virtual {v1, v3}, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;->a(Ljava/util/List;)V

    .line 1053
    invoke-virtual {v0}, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$Audition;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;->b(Ljava/lang/String;)V

    .line 1054
    invoke-virtual {v0}, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$Audition;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;->n(Ljava/lang/String;)V

    .line 1055
    invoke-virtual {v0}, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$Audition;->f()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;->a(Ljava/lang/String;)V

    .line 1056
    invoke-virtual {v0}, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$Audition;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;->m(Ljava/lang/String;)V

    .line 1057
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;->a(Z)V

    .line 1058
    invoke-virtual {v1, p1}, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;->a(Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;)V

    .line 1059
    invoke-virtual {p0, v1}, Lamp$1;->onChapterInfoResult(Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;)V

    .line 1085
    .end local v0    # "audition":Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$Audition;
    .end local v1    # "chapterAudio":Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;
    .end local v2    # "chapterStream":Lcom/iflytek/viafly/listenbook/entity/ChapterStream;
    .end local v3    # "chapterStreams":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/listenbook/entity/ChapterStream;>;"
    :cond_0
    :goto_0
    return-void

    .line 1064
    .restart local v0    # "audition":Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$Audition;
    :cond_1
    iget-object v6, p0, Lamp$1;->a:Lamp;

    invoke-static {v6}, Lamp;->b(Lamp;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v6

    const-string/jumbo v7, "viewActivity"

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1065
    iget-object v6, p0, Lamp$1;->a:Lamp;

    invoke-static {v6}, Lamp;->b(Lamp;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v6

    const-string/jumbo v7, "viewActivity"

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lamh;

    .line 1066
    .local v4, "viewActivity":Lamh;
    invoke-interface {v4, p1}, Lamh;->a(Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;)V

    .line 1069
    iget-object v6, p0, Lamp$1;->a:Lamp;

    invoke-static {v6}, Lamp;->b(Lamp;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v6

    const-string/jumbo v7, "viewNotification"

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1070
    iget-object v6, p0, Lamp$1;->a:Lamp;

    invoke-static {v6}, Lamp;->b(Lamp;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v6

    const-string/jumbo v7, "viewNotification"

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lamh;

    .line 1071
    .local v5, "viewNotification":Lamh;
    const/16 v6, 0x3fc

    invoke-interface {v5, v6}, Lamh;->a(I)V

    goto :goto_0

    .line 1074
    .end local v4    # "viewActivity":Lamh;
    .end local v5    # "viewNotification":Lamh;
    :cond_2
    iget-object v6, p0, Lamp$1;->a:Lamp;

    invoke-static {v6}, Lamp;->b(Lamp;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v6

    const-string/jumbo v7, "viewNotification"

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1075
    iget-object v6, p0, Lamp$1;->a:Lamp;

    invoke-static {v6}, Lamp;->b(Lamp;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v6

    const-string/jumbo v7, "viewNotification"

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lamh;

    .line 1076
    .restart local v5    # "viewNotification":Lamh;
    invoke-interface {v5, p1}, Lamh;->a(Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;)V

    goto :goto_0

    .line 1083
    .end local v0    # "audition":Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$Audition;
    .end local v5    # "viewNotification":Lamh;
    :cond_3
    iget-object v6, p0, Lamp$1;->a:Lamp;

    const/16 v7, 0x3f0

    invoke-static {v6, v7}, Lamp;->a(Lamp;I)V

    goto :goto_0
.end method

.method public onContentInfoResult(Lamm;)V
    .locals 13
    .param p1, "bookInfo"    # Lamm;

    .prologue
    .line 1149
    const-string/jumbo v10, "BookBizPresenter"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "onContentInfoResult bookInfo "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    if-nez p1, :cond_1

    .line 1152
    const-string/jumbo v10, "BookBizPresenter"

    const-string/jumbo v11, "onContentInfoResult get bookinfo fail "

    invoke-static {v10, v11}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    iget-object v10, p0, Lamp$1;->a:Lamp;

    const/16 v11, 0x3f2

    invoke-static {v10, v11}, Lamp;->a(Lamp;I)V

    .line 1210
    :cond_0
    :goto_0
    return-void

    .line 1158
    :cond_1
    iget-object v10, p0, Lamp$1;->a:Lamp;

    invoke-static {v10}, Lamp;->a(Lamp;)Lamk;

    move-result-object v10

    invoke-virtual {v10, p1}, Lamk;->a(Lamm;)V

    .line 1160
    invoke-virtual {p1}, Lamm;->n()Ljava/util/List;

    move-result-object v3

    .line 1161
    .local v3, "chapterList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/listenbook/entity/Chapter;>;"
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_2

    .line 1163
    iget-object v10, p0, Lamp$1;->a:Lamp;

    invoke-static {v10}, Lamp;->a(Lamp;)Lamk;

    move-result-object v10

    invoke-virtual {v10, v3}, Lamk;->a(Ljava/util/List;)I

    .line 1165
    iget-object v10, p0, Lamp$1;->a:Lamp;

    invoke-static {v10, v3}, Lamp;->a(Lamp;Ljava/util/List;)V

    .line 1171
    :cond_2
    iget-object v10, p0, Lamp$1;->a:Lamp;

    invoke-static {v10}, Lamp;->b(Lamp;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 1172
    .local v9, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lamh;>;>;"
    :cond_3
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1173
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 1174
    .local v8, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lamh;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lamh;

    .line 1175
    .local v0, "bookView":Lamh;
    if-eqz v0, :cond_3

    .line 1176
    invoke-interface {v0, p1}, Lamh;->a(Lamm;)V

    goto :goto_1

    .line 1180
    .end local v0    # "bookView":Lamh;
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lamh;>;"
    :cond_4
    iget-object v10, p0, Lamp$1;->a:Lamp;

    invoke-virtual {v10}, Lamp;->C()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1181
    iget-object v10, p0, Lamp$1;->a:Lamp;

    invoke-static {v10}, Lamp;->f(Lamp;)V

    .line 1184
    :cond_5
    iget-object v10, p0, Lamp$1;->a:Lamp;

    invoke-virtual {v10}, Lamp;->C()Z

    move-result v10

    if-eqz v10, :cond_7

    const-wide/16 v6, 0x0

    .line 1186
    .local v6, "delayTime":J
    :goto_2
    iget-object v10, p0, Lamp$1;->a:Lamp;

    invoke-static {v10}, Lamp;->d(Lamp;)Landroid/os/Handler;

    move-result-object v10

    new-instance v11, Lamp$1$2;

    invoke-direct {v11, p0}, Lamp$1$2;-><init>(Lamp$1;)V

    invoke-virtual {v10, v11, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1197
    :try_start_0
    iget-object v10, p0, Lamp$1;->a:Lamp;

    invoke-static {v10}, Lamp;->g(Lamp;)Lami;

    move-result-object v10

    invoke-virtual {v10}, Lami;->k()Ljava/lang/String;

    move-result-object v2

    .line 1198
    .local v2, "chapterId":Ljava/lang/String;
    const-string/jumbo v4, ""

    .line 1199
    .local v4, "chapterName":Ljava/lang/String;
    iget-object v10, p0, Lamp$1;->a:Lamp;

    invoke-static {v10}, Lamp;->a(Lamp;)Lamk;

    move-result-object v10

    invoke-virtual {v10}, Lamk;->j()Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;

    move-result-object v1

    .line 1201
    .local v1, "chapterAudio":Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 1202
    invoke-virtual {v1}, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;->q()Ljava/lang/String;

    move-result-object v4

    .line 1204
    :cond_6
    if-eqz p1, :cond_0

    if-eqz v1, :cond_0

    .line 1205
    invoke-static {}, Laio;->b()Laio;

    move-result-object v10

    invoke-virtual {p1}, Lamm;->g()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1}, Lamm;->b()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12, v4}, Laio;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1207
    .end local v1    # "chapterAudio":Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;
    .end local v2    # "chapterId":Ljava/lang/String;
    .end local v4    # "chapterName":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 1208
    .local v5, "e":Ljava/lang/Exception;
    const-string/jumbo v10, "BookBizPresenter"

    const-string/jumbo v11, ""

    invoke-static {v10, v11, v5}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1184
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v6    # "delayTime":J
    :cond_7
    const-wide/16 v6, 0x3e8

    goto :goto_2
.end method

.method public onError(I)V
    .locals 3
    .param p1, "errorCode"    # I

    .prologue
    .line 987
    const-string/jumbo v0, "BookBizPresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onError errorCode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    iget-object v0, p0, Lamp$1;->a:Lamp;

    invoke-static {v0, p1}, Lamp;->a(Lamp;I)V

    .line 989
    return-void
.end method

.method public onNoMoreChapterResult()V
    .locals 2

    .prologue
    .line 1144
    const-string/jumbo v0, "BookBizPresenter"

    const-string/jumbo v1, "onNoMoreChapterResult "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1145
    return-void
.end method

.method public onShareLinkResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "wxFriendUrl"    # Ljava/lang/String;
    .param p2, "wxCircleUrl"    # Ljava/lang/String;
    .param p3, "weiboUrl"    # Ljava/lang/String;

    .prologue
    .line 1240
    const-string/jumbo v3, "BookBizPresenter"

    const-string/jumbo v4, "onShareLinkResult "

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1242
    iget-object v3, p0, Lamp$1;->a:Lamp;

    invoke-static {v3}, Lamp;->b(Lamp;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1243
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lamh;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1244
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1245
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lamh;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lamh;

    .line 1246
    .local v0, "bookView":Lamh;
    if-eqz v0, :cond_0

    .line 1247
    invoke-interface {v0, p1, p2, p3}, Lamh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1250
    .end local v0    # "bookView":Lamh;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lamh;>;"
    :cond_1
    return-void
.end method

.method public onShareReportResult(I)V
    .locals 2
    .param p1, "resultCode"    # I

    .prologue
    .line 1254
    const-string/jumbo v0, "BookBizPresenter"

    const-string/jumbo v1, "onShareReportResult "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    return-void
.end method

.method public onSubCollectResult()V
    .locals 6

    .prologue
    .line 1221
    const-string/jumbo v4, "BookBizPresenter"

    const-string/jumbo v5, "onSubBookMarkResult "

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    iget-object v4, p0, Lamp$1;->a:Lamp;

    invoke-static {v4}, Lamp;->a(Lamp;)Lamk;

    move-result-object v4

    invoke-virtual {v4}, Lamk;->g()Lamm;

    move-result-object v0

    .line 1224
    .local v0, "bookInfo":Lamm;
    if-eqz v0, :cond_0

    .line 1225
    iget-object v4, p0, Lamp$1;->a:Lamp;

    invoke-static {v4}, Lamp;->a(Lamp;)Lamk;

    move-result-object v4

    invoke-virtual {v0}, Lamm;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lamk;->c(Ljava/lang/String;)V

    .line 1228
    :cond_0
    iget-object v4, p0, Lamp$1;->a:Lamp;

    invoke-static {v4}, Lamp;->b(Lamp;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1229
    .local v3, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lamh;>;>;"
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1230
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1231
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lamh;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lamh;

    .line 1232
    .local v1, "bookView":Lamh;
    if-eqz v1, :cond_1

    .line 1233
    invoke-interface {v1}, Lamh;->b()V

    goto :goto_0

    .line 1236
    .end local v1    # "bookView":Lamh;
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lamh;>;"
    :cond_2
    return-void
.end method

.method public onTipVoiceResult(Ljava/lang/String;)V
    .locals 1
    .param p1, "tipValue"    # Ljava/lang/String;

    .prologue
    .line 1090
    iget-object v0, p0, Lamp$1;->a:Lamp;

    invoke-static {v0, p1}, Lamp;->a(Lamp;Ljava/lang/String;)Ljava/lang/String;

    .line 1091
    return-void
.end method

.method public onUnLoginResult()V
    .locals 5

    .prologue
    const/16 v4, 0x3f7

    .line 1095
    const-string/jumbo v2, "BookBizPresenter"

    const-string/jumbo v3, "onUnLoginResult "

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    invoke-static {}, Lth;->a()Lth;

    move-result-object v2

    invoke-virtual {v2}, Lth;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1098
    invoke-static {}, Lanv;->a()Lanv;

    move-result-object v2

    invoke-virtual {v2}, Lanv;->b()V

    .line 1103
    :cond_0
    iget-object v2, p0, Lamp$1;->a:Lamp;

    invoke-static {v2}, Lamp;->b(Lamp;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    const-string/jumbo v3, "viewActivity"

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1104
    iget-object v2, p0, Lamp$1;->a:Lamp;

    invoke-static {v2}, Lamp;->b(Lamp;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    const-string/jumbo v3, "viewActivity"

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lamh;

    .line 1105
    .local v0, "viewActivity":Lamh;
    invoke-interface {v0, v4}, Lamh;->a(I)V

    .line 1107
    iget-object v2, p0, Lamp$1;->a:Lamp;

    invoke-static {v2}, Lamp;->b(Lamp;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    const-string/jumbo v3, "viewNotification"

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1108
    iget-object v2, p0, Lamp$1;->a:Lamp;

    invoke-static {v2}, Lamp;->b(Lamp;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    const-string/jumbo v3, "viewNotification"

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lamh;

    .line 1109
    .local v1, "viewNotification":Lamh;
    const/16 v2, 0x3fc

    invoke-interface {v1, v2}, Lamh;->a(I)V

    .line 1116
    .end local v0    # "viewActivity":Lamh;
    .end local v1    # "viewNotification":Lamh;
    :cond_1
    :goto_0
    return-void

    .line 1112
    :cond_2
    iget-object v2, p0, Lamp$1;->a:Lamp;

    invoke-static {v2}, Lamp;->b(Lamp;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    const-string/jumbo v3, "viewNotification"

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1113
    iget-object v2, p0, Lamp$1;->a:Lamp;

    invoke-static {v2}, Lamp;->b(Lamp;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    const-string/jumbo v3, "viewNotification"

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lamh;

    .line 1114
    .restart local v1    # "viewNotification":Lamh;
    invoke-interface {v1, v4}, Lamh;->a(I)V

    goto :goto_0
.end method
