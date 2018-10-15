.class Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity$2;
.super Landroid/os/Handler;
.source "AlarmNewsDisplayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity$2;->a:Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 16
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 119
    invoke-super/range {p0 .. p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 120
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    if-nez v13, :cond_1

    .line 121
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity$2;->a:Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;->a(Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;Z)Z

    .line 122
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity$2;->a:Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;

    invoke-static {v13}, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;->b(Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;)Lcom/iflytek/base/skin/customView/XTextView;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/iflytek/base/skin/customView/XTextView;->setVisibility(I)V

    .line 123
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity$2;->a:Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;

    invoke-static {v13}, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;->c(Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;)Lcom/iflytek/base/skin/customView/XLinearLayout;

    move-result-object v13

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setVisibility(I)V

    .line 124
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity$2;->a:Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;

    invoke-static {v13}, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;->b(Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;)Lcom/iflytek/base/skin/customView/XTextView;

    move-result-object v14

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v14, v13}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_0

    .line 126
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity$2;->a:Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;

    const/4 v14, 0x1

    invoke-static {v13, v14}, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;->a(Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;Z)Z

    .line 127
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity$2;->a:Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;

    invoke-static {v13}, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;->b(Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;)Lcom/iflytek/base/skin/customView/XTextView;

    move-result-object v13

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Lcom/iflytek/base/skin/customView/XTextView;->setVisibility(I)V

    .line 128
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity$2;->a:Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;

    invoke-static {v13}, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;->c(Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;)Lcom/iflytek/base/skin/customView/XLinearLayout;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setVisibility(I)V

    .line 130
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    invoke-direct {v7, v13}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 131
    .local v7, "jsonObject":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity$2;->a:Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;

    const-string/jumbo v13, "result"

    invoke-virtual {v7, v13}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/json/JSONObject;

    const-string/jumbo v15, "link_url"

    invoke-virtual {v13, v15}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v14, v13}, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;->b(Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 132
    const-string/jumbo v13, "result"

    invoke-virtual {v7, v13}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/json/JSONObject;

    const-string/jumbo v14, "news"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 133
    .local v6, "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v8

    .line 134
    .local v8, "length":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v8, :cond_0

    .line 135
    const/4 v13, 0x3

    if-gt v3, v13, :cond_0

    .line 138
    invoke-virtual {v6, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/json/JSONObject;

    .line 139
    .local v9, "news":Lorg/json/JSONObject;
    const-string/jumbo v13, "image_url"

    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 140
    .local v5, "image_url":Ljava/lang/String;
    const-string/jumbo v13, "news_url"

    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 141
    .local v11, "news_url":Ljava/lang/String;
    const-string/jumbo v13, "title"

    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 142
    .local v10, "news_title":Ljava/lang/String;
    new-instance v1, Lavo;

    invoke-direct {v1, v5, v11, v10}, Lavo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    .local v1, "alarmNews":Lavo;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity$2;->a:Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;

    invoke-static {v13}, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;->d(Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity$2;->a:Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;

    invoke-static {v13}, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;->e(Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/iflytek/base/skin/customView/XImageView;

    .line 146
    .local v4, "imageView":Lcom/iflytek/base/skin/customView/XImageView;
    invoke-static {}, Lazl;->a()Lazl;

    move-result-object v13

    invoke-virtual {v13, v5, v4}, Lazl;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 148
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity$2;->a:Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;

    invoke-static {v13}, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;->f(Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/iflytek/base/skin/customView/XTextView;

    .line 149
    .local v12, "textView":Lcom/iflytek/base/skin/customView/XTextView;
    invoke-virtual {v12, v10}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 151
    .end local v1    # "alarmNews":Lavo;
    .end local v3    # "i":I
    .end local v4    # "imageView":Lcom/iflytek/base/skin/customView/XImageView;
    .end local v5    # "image_url":Ljava/lang/String;
    .end local v6    # "jsonArray":Lorg/json/JSONArray;
    .end local v7    # "jsonObject":Lorg/json/JSONObject;
    .end local v8    # "length":I
    .end local v9    # "news":Lorg/json/JSONObject;
    .end local v10    # "news_title":Ljava/lang/String;
    .end local v11    # "news_url":Ljava/lang/String;
    .end local v12    # "textView":Lcom/iflytek/base/skin/customView/XTextView;
    :catch_0
    move-exception v2

    .line 152
    .local v2, "e":Lorg/json/JSONException;
    const-string/jumbo v13, "AlarmNewsDisplayActivity"

    const-string/jumbo v14, "JSONException"

    invoke-static {v13, v14}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
