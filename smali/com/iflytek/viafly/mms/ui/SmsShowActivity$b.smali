.class final Lcom/iflytek/viafly/mms/ui/SmsShowActivity$b;
.super Landroid/content/AsyncQueryHandler;
.source "SmsShowActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/mms/ui/SmsShowActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/mms/ui/SmsShowActivity;


# direct methods
.method public constructor <init>(Lcom/iflytek/viafly/mms/ui/SmsShowActivity;Landroid/content/ContentResolver;)V
    .locals 0
    .param p2, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 1170
    iput-object p1, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity$b;->a:Lcom/iflytek/viafly/mms/ui/SmsShowActivity;

    .line 1171
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 1172
    return-void
.end method


# virtual methods
.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 10
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "result"    # I

    .prologue
    .line 1176
    packed-switch p1, :pswitch_data_0

    .line 1210
    :goto_0
    return-void

    .line 1178
    :pswitch_0
    iget-object v4, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity$b;->a:Lcom/iflytek/viafly/mms/ui/SmsShowActivity;

    invoke-static {v4}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->c(Lcom/iflytek/viafly/mms/ui/SmsShowActivity;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 1179
    :try_start_0
    const-string/jumbo v4, "SmsShowActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "delete message token| size = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity$b;->a:Lcom/iflytek/viafly/mms/ui/SmsShowActivity;

    invoke-static {v7}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->d(Lcom/iflytek/viafly/mms/ui/SmsShowActivity;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", mPosition = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity$b;->a:Lcom/iflytek/viafly/mms/ui/SmsShowActivity;

    .line 1180
    invoke-static {v7}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->o(Lcom/iflytek/viafly/mms/ui/SmsShowActivity;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1179
    invoke-static {v4, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    iget-object v4, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity$b;->a:Lcom/iflytek/viafly/mms/ui/SmsShowActivity;

    invoke-static {v4}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->d(Lcom/iflytek/viafly/mms/ui/SmsShowActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_0

    .line 1183
    iget-object v4, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity$b;->a:Lcom/iflytek/viafly/mms/ui/SmsShowActivity;

    invoke-virtual {v4}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->finish()V

    .line 1207
    :goto_1
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 1186
    :cond_0
    const/4 v2, 0x0

    .line 1187
    .local v2, "pos":I
    :try_start_1
    iget-object v4, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity$b;->a:Lcom/iflytek/viafly/mms/ui/SmsShowActivity;

    invoke-static {v4}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->d(Lcom/iflytek/viafly/mms/ui/SmsShowActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1188
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v3, :cond_2

    .line 1189
    iget-object v4, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity$b;->a:Lcom/iflytek/viafly/mms/ui/SmsShowActivity;

    invoke-static {v4}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->d(Lcom/iflytek/viafly/mms/ui/SmsShowActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/iflytek/base/mms/entities/SmsItem;

    invoke-virtual {v4}, Lcom/iflytek/base/mms/entities/SmsItem;->getMsgId()J

    move-result-wide v6

    iget-object v4, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity$b;->a:Lcom/iflytek/viafly/mms/ui/SmsShowActivity;

    invoke-static {v4}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->r(Lcom/iflytek/viafly/mms/ui/SmsShowActivity;)J

    move-result-wide v8

    cmp-long v4, v6, v8

    if-nez v4, :cond_1

    .line 1190
    move v2, v1

    .line 1188
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1194
    :cond_2
    iget-object v4, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity$b;->a:Lcom/iflytek/viafly/mms/ui/SmsShowActivity;

    invoke-static {v4}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->d(Lcom/iflytek/viafly/mms/ui/SmsShowActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1195
    iget-object v4, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity$b;->a:Lcom/iflytek/viafly/mms/ui/SmsShowActivity;

    invoke-static {v4}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->p(Lcom/iflytek/viafly/mms/ui/SmsShowActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1196
    add-int/lit8 v4, v3, -0x1

    if-ne v2, v4, :cond_3

    .line 1197
    iget-object v4, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity$b;->a:Lcom/iflytek/viafly/mms/ui/SmsShowActivity;

    add-int/lit8 v6, v2, -0x1

    invoke-static {v4, v6}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->c(Lcom/iflytek/viafly/mms/ui/SmsShowActivity;I)V

    .line 1201
    :goto_3
    iget-object v4, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity$b;->a:Lcom/iflytek/viafly/mms/ui/SmsShowActivity;

    invoke-static {v4}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->s(Lcom/iflytek/viafly/mms/ui/SmsShowActivity;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1202
    .end local v1    # "i":I
    .end local v3    # "size":I
    :catch_0
    move-exception v0

    .line 1203
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1204
    iget-object v4, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity$b;->a:Lcom/iflytek/viafly/mms/ui/SmsShowActivity;

    invoke-virtual {v4}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->finish()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1199
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "i":I
    .restart local v3    # "size":I
    :cond_3
    :try_start_3
    iget-object v4, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity$b;->a:Lcom/iflytek/viafly/mms/ui/SmsShowActivity;

    invoke-static {v4, v2}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->c(Lcom/iflytek/viafly/mms/ui/SmsShowActivity;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 1176
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
