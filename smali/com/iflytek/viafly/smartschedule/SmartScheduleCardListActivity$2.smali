.class Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity$2;
.super Ljava/lang/Object;
.source "SmartScheduleCardListActivity.java"

# interfaces
.implements Lcom/iflytek/viafly/smartschedule/CardActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity$2;->this$0:Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBottomClick(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)V
    .locals 4
    .param p1, "data"    # Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;

    .prologue
    const/4 v3, 0x0

    .line 241
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 242
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->getType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 243
    const-string/jumbo v1, "d_schedule_name"

    invoke-virtual {p1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    :cond_0
    invoke-virtual {p1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->getBottomAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 246
    const-string/jumbo v1, "d_schedule_card_bottom_action"

    invoke-virtual {p1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->getBottomAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    :cond_1
    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity$2;->this$0:Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;

    invoke-virtual {v1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lxm;->a(Landroid/content/Context;)Lxm;

    move-result-object v1

    const-string/jumbo v2, "FT77005"

    .line 249
    invoke-virtual {v1, v2, v0}, Lxm;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 250
    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity$2;->this$0:Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;

    invoke-virtual {v1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->onSmartBottomClick(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)V

    .line 252
    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity$2;->this$0:Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;

    invoke-virtual {v1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;->finish()V

    .line 253
    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity$2;->this$0:Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;

    invoke-virtual {v1, v3, v3}, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;->overridePendingTransition(II)V

    .line 254
    return-void
.end method

.method public onBottomLeftClick(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)V
    .locals 4
    .param p1, "data"    # Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;

    .prologue
    const/4 v3, 0x0

    .line 258
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 259
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->getType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 260
    const-string/jumbo v1, "d_schedule_name"

    invoke-virtual {p1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    :cond_0
    invoke-virtual {p1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->getBottomLeftAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 263
    const-string/jumbo v1, "d_schedule_card_bottom_action"

    invoke-virtual {p1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->getBottomLeftAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    :cond_1
    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity$2;->this$0:Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;

    invoke-virtual {v1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lxm;->a(Landroid/content/Context;)Lxm;

    move-result-object v1

    const-string/jumbo v2, "FT77005"

    .line 266
    invoke-virtual {v1, v2, v0}, Lxm;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 267
    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity$2;->this$0:Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;

    invoke-virtual {v1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->onSmartBottomLeftClick(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)V

    .line 269
    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity$2;->this$0:Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;

    invoke-virtual {v1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;->finish()V

    .line 270
    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity$2;->this$0:Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;

    invoke-virtual {v1, v3, v3}, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;->overridePendingTransition(II)V

    .line 271
    return-void
.end method

.method public onCloseClick(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)V
    .locals 4
    .param p1, "data"    # Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;

    .prologue
    const/4 v3, 0x0

    .line 225
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 226
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->getType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 227
    const-string/jumbo v1, "d_schedule_name"

    invoke-virtual {p1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    :cond_0
    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity$2;->this$0:Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;

    invoke-virtual {v1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lxm;->a(Landroid/content/Context;)Lxm;

    move-result-object v1

    const-string/jumbo v2, "FT77006"

    .line 230
    invoke-virtual {v1, v2, v0}, Lxm;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 231
    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity$2;->this$0:Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;

    invoke-virtual {v1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->onSmartRemoveClick(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)V

    .line 232
    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity$2;->this$0:Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;

    invoke-static {v1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;->access$110(Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;)I

    .line 233
    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity$2;->this$0:Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;

    invoke-static {v1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;->access$100(Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;)I

    move-result v1

    if-nez v1, :cond_1

    .line 234
    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity$2;->this$0:Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;

    invoke-virtual {v1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;->finish()V

    .line 235
    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity$2;->this$0:Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;

    invoke-virtual {v1, v3, v3}, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;->overridePendingTransition(II)V

    .line 237
    :cond_1
    return-void
.end method

.method public onContentClick(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)V
    .locals 4
    .param p1, "data"    # Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;

    .prologue
    const/4 v3, 0x0

    .line 212
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 213
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->getType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 214
    const-string/jumbo v1, "d_schedule_name"

    invoke-virtual {p1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    :cond_0
    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity$2;->this$0:Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;

    invoke-virtual {v1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lxm;->a(Landroid/content/Context;)Lxm;

    move-result-object v1

    const-string/jumbo v2, "FT77004"

    .line 217
    invoke-virtual {v1, v2, v0}, Lxm;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 218
    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity$2;->this$0:Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;

    invoke-virtual {v1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->onSmartContentClick(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)V

    .line 219
    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity$2;->this$0:Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;

    invoke-virtual {v1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;->finish()V

    .line 220
    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity$2;->this$0:Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;

    invoke-virtual {v1, v3, v3}, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;->overridePendingTransition(II)V

    .line 221
    return-void
.end method

.method public onEditClick(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)V
    .locals 4
    .param p1, "data"    # Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;

    .prologue
    const/4 v3, 0x0

    .line 195
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 196
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->getType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 197
    const-string/jumbo v1, "d_schedule_name"

    invoke-virtual {p1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    :cond_0
    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity$2;->this$0:Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;

    invoke-virtual {v1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lxm;->a(Landroid/content/Context;)Lxm;

    move-result-object v1

    const-string/jumbo v2, "FT77007"

    .line 200
    invoke-virtual {v1, v2, v0}, Lxm;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 201
    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity$2;->this$0:Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;

    invoke-virtual {v1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->onSmartEditClick(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)V

    .line 204
    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity$2;->this$0:Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;

    invoke-virtual {v1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lwz;->a(Landroid/content/Context;)Lwz;

    move-result-object v1

    const-string/jumbo v2, "LX_100057"

    invoke-virtual {v1, v2}, Lwz;->a(Ljava/lang/String;)V

    .line 206
    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity$2;->this$0:Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;

    invoke-virtual {v1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;->finish()V

    .line 207
    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity$2;->this$0:Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;

    invoke-virtual {v1, v3, v3}, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardListActivity;->overridePendingTransition(II)V

    .line 208
    return-void
.end method
