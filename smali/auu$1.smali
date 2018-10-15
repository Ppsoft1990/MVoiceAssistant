.class Lauu$1;
.super Ljava/lang/Object;
.source "ScheduleMemoryCacheManager.java"

# interfaces
.implements Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lauu;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lauu;


# direct methods
.method constructor <init>(Lauu;)V
    .locals 0
    .param p1, "this$0"    # Lauu;

    .prologue
    .line 103
    iput-object p1, p0, Lauu$1;->a:Lauu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDelete(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V
    .locals 2
    .param p1, "schedule"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .prologue
    .line 228
    const-string/jumbo v0, "ScheduleMemoryCacheManager"

    const-string/jumbo v1, "onDelete()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object v0, p0, Lauu$1;->a:Lauu;

    invoke-static {v0}, Lauu;->a(Lauu;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lauu$1;->a:Lauu;

    invoke-static {v0}, Lauu;->a(Lauu;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lauu$1;->a:Lauu;

    invoke-static {v0}, Lauu;->a(Lauu;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 232
    :cond_0
    iget-object v0, p0, Lauu$1;->a:Lauu;

    invoke-static {v0}, Lauu;->b(Lauu;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lauu$1;->a:Lauu;

    invoke-static {v0}, Lauu;->b(Lauu;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 233
    iget-object v0, p0, Lauu$1;->a:Lauu;

    invoke-static {v0}, Lauu;->b(Lauu;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 235
    :cond_1
    iget-object v0, p0, Lauu$1;->a:Lauu;

    invoke-static {v0}, Lauu;->c(Lauu;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lauu$1;->a:Lauu;

    invoke-static {v0}, Lauu;->c(Lauu;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 236
    iget-object v0, p0, Lauu$1;->a:Lauu;

    invoke-static {v0}, Lauu;->c(Lauu;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 238
    :cond_2
    return-void
.end method

.method public onInsert(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V
    .locals 11
    .param p1, "schedule"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .prologue
    const/4 v10, 0x0

    .line 160
    const-string/jumbo v8, "ScheduleMemoryCacheManager"

    const-string/jumbo v9, "onInsert()"

    invoke-static {v8, v9}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v8, p0, Lauu$1;->a:Lauu;

    invoke-static {v8}, Lauu;->a(Lauu;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v8

    if-nez v8, :cond_0

    .line 224
    :goto_0
    return-void

    .line 164
    :cond_0
    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getId()I

    move-result v2

    .line 165
    .local v2, "id":I
    const/4 v6, 0x0

    .line 166
    .local v6, "todoIndex":I
    const/4 v4, 0x0

    .line 167
    .local v4, "isOldScheduleExistTodo":Z
    iget-object v8, p0, Lauu$1;->a:Lauu;

    invoke-static {v8}, Lauu;->b(Lauu;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 168
    iget-object v8, p0, Lauu$1;->a:Lauu;

    invoke-static {v8}, Lauu;->b(Lauu;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .line 169
    .local v5, "tmpSchedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    if-eqz v5, :cond_6

    invoke-virtual {v5}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getId()I

    move-result v9

    if-ne v9, v2, :cond_6

    .line 170
    const/4 v4, 0x1

    .line 175
    .end local v5    # "tmpSchedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    :cond_1
    if-eqz v4, :cond_2

    .line 176
    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->isCompleted()Z

    move-result v8

    if-nez v8, :cond_7

    .line 177
    iget-object v8, p0, Lauu$1;->a:Lauu;

    invoke-static {v8}, Lauu;->b(Lauu;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v8

    invoke-virtual {v8, v6, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 190
    :cond_2
    :goto_2
    const/4 v1, 0x0

    .line 191
    .local v1, "doneIndex":I
    const/4 v3, 0x0

    .line 192
    .local v3, "isOldScheduleExistDone":Z
    iget-object v8, p0, Lauu$1;->a:Lauu;

    invoke-static {v8}, Lauu;->c(Lauu;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 193
    iget-object v8, p0, Lauu$1;->a:Lauu;

    invoke-static {v8}, Lauu;->c(Lauu;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .line 194
    .restart local v5    # "tmpSchedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    if-eqz v5, :cond_8

    invoke-virtual {v5}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getId()I

    move-result v9

    if-ne v9, v2, :cond_8

    .line 195
    const/4 v3, 0x1

    .line 200
    .end local v5    # "tmpSchedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    :cond_3
    if-eqz v3, :cond_4

    .line 201
    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->isCompleted()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 202
    iget-object v8, p0, Lauu$1;->a:Lauu;

    invoke-static {v8}, Lauu;->c(Lauu;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v8

    invoke-virtual {v8, v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 215
    :cond_4
    :goto_4
    if-nez v4, :cond_5

    if-eqz v3, :cond_a

    .line 216
    :cond_5
    iget-object v8, p0, Lauu$1;->a:Lauu;

    invoke-static {v8}, Lauu;->a(Lauu;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 217
    iget-object v8, p0, Lauu$1;->a:Lauu;

    invoke-static {v8}, Lauu;->a(Lauu;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v8

    iget-object v9, p0, Lauu$1;->a:Lauu;

    invoke-static {v9}, Lauu;->b(Lauu;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    .line 218
    iget-object v8, p0, Lauu$1;->a:Lauu;

    invoke-static {v8}, Lauu;->a(Lauu;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v8

    iget-object v9, p0, Lauu$1;->a:Lauu;

    invoke-static {v9}, Lauu;->c(Lauu;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    .line 173
    .end local v1    # "doneIndex":I
    .end local v3    # "isOldScheduleExistDone":Z
    .restart local v5    # "tmpSchedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    :cond_6
    add-int/lit8 v6, v6, 0x1

    .line 174
    goto/16 :goto_1

    .line 179
    .end local v5    # "tmpSchedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    :cond_7
    iget-object v8, p0, Lauu$1;->a:Lauu;

    invoke-static {v8}, Lauu;->c(Lauu;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 180
    iget-object v8, p0, Lauu$1;->a:Lauu;

    invoke-static {v8}, Lauu;->c(Lauu;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 182
    .local v0, "completeScheduleList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/Schedule;>;"
    invoke-interface {v0, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 183
    iget-object v8, p0, Lauu$1;->a:Lauu;

    invoke-static {v8}, Lauu;->c(Lauu;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 184
    iget-object v8, p0, Lauu$1;->a:Lauu;

    invoke-static {v8}, Lauu;->c(Lauu;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v8

    invoke-static {v0}, Lawh;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_2

    .line 198
    .end local v0    # "completeScheduleList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/Schedule;>;"
    .restart local v1    # "doneIndex":I
    .restart local v3    # "isOldScheduleExistDone":Z
    .restart local v5    # "tmpSchedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    :cond_8
    add-int/lit8 v1, v1, 0x1

    .line 199
    goto/16 :goto_3

    .line 204
    .end local v5    # "tmpSchedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    :cond_9
    iget-object v8, p0, Lauu$1;->a:Lauu;

    invoke-static {v8}, Lauu;->c(Lauu;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    .line 205
    iget-object v8, p0, Lauu$1;->a:Lauu;

    invoke-static {v8}, Lauu;->b(Lauu;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 207
    .local v7, "todoScheduleList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/Schedule;>;"
    iget-object v8, p0, Lauu$1;->a:Lauu;

    invoke-static {v8}, Lauu;->b(Lauu;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 208
    iget-object v8, p0, Lauu$1;->a:Lauu;

    invoke-static {v8}, Lauu;->b(Lauu;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 209
    iget-object v8, p0, Lauu$1;->a:Lauu;

    invoke-static {v8}, Lauu;->b(Lauu;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v8

    invoke-static {v7}, Lawh;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_4

    .line 220
    .end local v7    # "todoScheduleList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/Schedule;>;"
    :cond_a
    iget-object v8, p0, Lauu$1;->a:Lauu;

    invoke-static {v8, v10}, Lauu;->a(Lauu;Ljava/util/concurrent/CopyOnWriteArrayList;)Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 221
    iget-object v8, p0, Lauu$1;->a:Lauu;

    invoke-static {v8, v10}, Lauu;->b(Lauu;Ljava/util/concurrent/CopyOnWriteArrayList;)Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 222
    iget-object v8, p0, Lauu$1;->a:Lauu;

    invoke-static {v8, v10}, Lauu;->c(Lauu;Ljava/util/concurrent/CopyOnWriteArrayList;)Ljava/util/concurrent/CopyOnWriteArrayList;

    goto/16 :goto_0
.end method

.method public onUpdate(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V
    .locals 7
    .param p1, "oldSchedule"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    .param p2, "newSchedule"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .prologue
    const/4 v6, -0x1

    .line 107
    const-string/jumbo v4, "ScheduleMemoryCacheManager"

    const-string/jumbo v5, "onUpdate()"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v4, p0, Lauu$1;->a:Lauu;

    invoke-static {v4}, Lauu;->a(Lauu;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v4

    if-nez v4, :cond_1

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    const/4 v2, -0x1

    .line 113
    .local v2, "todoIndex":I
    iget-object v4, p0, Lauu$1;->a:Lauu;

    invoke-static {v4}, Lauu;->b(Lauu;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 114
    iget-object v4, p0, Lauu$1;->a:Lauu;

    invoke-static {v4}, Lauu;->b(Lauu;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v2

    .line 116
    :cond_2
    if-eq v6, v2, :cond_3

    .line 117
    invoke-virtual {p2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->isCompleted()Z

    move-result v4

    if-nez v4, :cond_7

    .line 118
    iget-object v4, p0, Lauu$1;->a:Lauu;

    invoke-static {v4}, Lauu;->b(Lauu;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v4

    invoke-virtual {v4, v2, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 132
    :cond_3
    :goto_1
    const/4 v1, -0x1

    .line 133
    .local v1, "doneIndex":I
    iget-object v4, p0, Lauu$1;->a:Lauu;

    invoke-static {v4}, Lauu;->c(Lauu;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 134
    iget-object v4, p0, Lauu$1;->a:Lauu;

    invoke-static {v4}, Lauu;->c(Lauu;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v1

    .line 136
    :cond_4
    if-eq v6, v1, :cond_5

    .line 137
    invoke-virtual {p2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->isCompleted()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 138
    iget-object v4, p0, Lauu$1;->a:Lauu;

    invoke-static {v4}, Lauu;->c(Lauu;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v4

    invoke-virtual {v4, v1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 151
    :cond_5
    :goto_2
    if-ne v2, v6, :cond_6

    if-eq v1, v6, :cond_0

    .line 152
    :cond_6
    iget-object v4, p0, Lauu$1;->a:Lauu;

    invoke-static {v4}, Lauu;->a(Lauu;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 153
    iget-object v4, p0, Lauu$1;->a:Lauu;

    invoke-static {v4}, Lauu;->a(Lauu;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v4

    iget-object v5, p0, Lauu$1;->a:Lauu;

    invoke-static {v5}, Lauu;->b(Lauu;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    .line 154
    iget-object v4, p0, Lauu$1;->a:Lauu;

    invoke-static {v4}, Lauu;->a(Lauu;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v4

    iget-object v5, p0, Lauu$1;->a:Lauu;

    invoke-static {v5}, Lauu;->c(Lauu;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 120
    .end local v1    # "doneIndex":I
    :cond_7
    iget-object v4, p0, Lauu$1;->a:Lauu;

    invoke-static {v4}, Lauu;->b(Lauu;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 121
    iget-object v4, p0, Lauu$1;->a:Lauu;

    invoke-static {v4}, Lauu;->c(Lauu;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 122
    iget-object v4, p0, Lauu$1;->a:Lauu;

    invoke-static {v4}, Lauu;->c(Lauu;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .local v0, "completeScheduleList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/Schedule;>;"
    iget-object v4, p0, Lauu$1;->a:Lauu;

    invoke-static {v4}, Lauu;->c(Lauu;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 125
    iget-object v4, p0, Lauu$1;->a:Lauu;

    invoke-static {v4}, Lauu;->c(Lauu;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 126
    iget-object v4, p0, Lauu$1;->a:Lauu;

    invoke-static {v4}, Lauu;->c(Lauu;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v4

    invoke-static {v0}, Lawh;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    .line 140
    .end local v0    # "completeScheduleList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/Schedule;>;"
    .restart local v1    # "doneIndex":I
    :cond_8
    iget-object v4, p0, Lauu$1;->a:Lauu;

    invoke-static {v4}, Lauu;->c(Lauu;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 141
    iget-object v4, p0, Lauu$1;->a:Lauu;

    invoke-static {v4}, Lauu;->b(Lauu;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 142
    iget-object v4, p0, Lauu$1;->a:Lauu;

    invoke-static {v4}, Lauu;->b(Lauu;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 144
    .local v3, "todoScheduleList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/Schedule;>;"
    iget-object v4, p0, Lauu$1;->a:Lauu;

    invoke-static {v4}, Lauu;->b(Lauu;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 145
    iget-object v4, p0, Lauu$1;->a:Lauu;

    invoke-static {v4}, Lauu;->b(Lauu;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 146
    iget-object v4, p0, Lauu$1;->a:Lauu;

    invoke-static {v4}, Lauu;->b(Lauu;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v4

    invoke-static {v3}, Lawh;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_2
.end method
