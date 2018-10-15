.class Ladl$5;
.super Ljava/lang/Object;
.source "SpecificBroadcastSettingFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ladl;->a(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Z

.field final synthetic c:Ladl;


# direct methods
.method constructor <init>(Ladl;IZ)V
    .locals 0
    .param p1, "this$0"    # Ladl;

    .prologue
    .line 1107
    iput-object p1, p0, Ladl$5;->c:Ladl;

    iput p2, p0, Ladl$5;->a:I

    iput-boolean p3, p0, Ladl$5;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 1110
    iget-object v3, p0, Ladl$5;->c:Ladl;

    invoke-static {v3}, Ladl;->d(Ladl;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 1111
    :try_start_0
    iget-object v3, p0, Ladl$5;->c:Ladl;

    invoke-static {v3}, Ladl;->b(Ladl;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v3

    iget v5, p0, Ladl$5;->a:I

    invoke-virtual {v3, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iflytek/viafly/dial/specific/SpecificVoice;

    invoke-virtual {v3}, Lcom/iflytek/viafly/dial/specific/SpecificVoice;->j()Ljava/lang/String;

    move-result-object v1

    .line 1112
    .local v1, "srcPath":Ljava/lang/String;
    invoke-static {v1}, Lcom/iflytek/yd/util/FileManager;->checkFileExist(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1113
    monitor-exit v4

    .line 1130
    :goto_0
    return-void

    .line 1115
    :cond_0
    iget-object v3, p0, Ladl$5;->c:Ladl;

    invoke-static {v3}, Ladl;->b(Ladl;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v3

    iget v5, p0, Ladl$5;->a:I

    invoke-virtual {v3, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iflytek/viafly/dial/specific/SpecificVoice;

    invoke-virtual {v3}, Lcom/iflytek/viafly/dial/specific/SpecificVoice;->i()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/iflytek/viafly/dial/specific/SpecificVoiceUtil;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1116
    .local v0, "decPath":Ljava/lang/String;
    invoke-static {v0}, Lcom/iflytek/yd/util/FileManager;->checkFileExist(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1117
    monitor-exit v4

    goto :goto_0

    .line 1129
    .end local v0    # "decPath":Ljava/lang/String;
    .end local v1    # "srcPath":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1119
    .restart local v0    # "decPath":Ljava/lang/String;
    .restart local v1    # "srcPath":Ljava/lang/String;
    :cond_1
    :try_start_1
    sget-object v2, Lcom/iflytek/viafly/dial/specific/SpecificVoiceUtil;->a:Ljava/lang/String;

    .line 1120
    .local v2, "unZipDecPath":Ljava/lang/String;
    const/4 v5, 0x5

    iget-object v3, p0, Ladl$5;->c:Ladl;

    invoke-static {v3}, Ladl;->b(Ladl;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v3

    iget v6, p0, Ladl$5;->a:I

    invoke-virtual {v3, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iflytek/viafly/dial/specific/SpecificVoice;

    invoke-virtual {v3}, Lcom/iflytek/viafly/dial/specific/SpecificVoice;->g()I

    move-result v3

    if-ne v5, v3, :cond_2

    .line 1121
    sget-object v2, Lpy;->b:Ljava/lang/String;

    .line 1123
    :cond_2
    invoke-static {v1, v2}, Lcom/iflytek/yd/util/FileManager;->unZip(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1124
    iget-object v3, p0, Ladl$5;->c:Ladl;

    invoke-static {v3}, Ladl;->b(Ladl;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v3

    iget v5, p0, Ladl$5;->a:I

    invoke-virtual {v3, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iflytek/viafly/dial/specific/SpecificVoice;

    invoke-virtual {v3, v0}, Lcom/iflytek/viafly/dial/specific/SpecificVoice;->b(Ljava/lang/String;)V

    .line 1125
    iget-boolean v3, p0, Ladl$5;->b:Z

    if-eqz v3, :cond_3

    .line 1126
    iget-object v3, p0, Ladl$5;->c:Ladl;

    iget v5, p0, Ladl$5;->a:I

    invoke-virtual {v3, v5}, Ladl;->g(I)V

    .line 1129
    :cond_3
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
