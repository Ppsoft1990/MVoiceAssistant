.class Layv$1$1;
.super Ljava/lang/Object;
.source "TranslatePicPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Layv$1;->a(ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Layv$1;


# direct methods
.method constructor <init>(Layv$1;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Layv$1;

    .prologue
    .line 103
    iput-object p1, p0, Layv$1$1;->b:Layv$1;

    iput-object p2, p0, Layv$1$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 31

    .prologue
    .line 108
    :try_start_0
    const-string/jumbo v28, "TranslatePicPresenter"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "image recognize result : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Layv$1$1;->a:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    new-instance v12, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v0, v0, Layv$1$1;->a:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-direct {v12, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 110
    .local v12, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v28, "code"

    move-object/from16 v0, v28

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 111
    .local v9, "error":Ljava/lang/String;
    const-string/jumbo v28, "sid"

    move-object/from16 v0, v28

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 112
    .local v23, "sid":Ljava/lang/String;
    const-string/jumbo v28, "TranslatePicPresenter"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "image recognize sid : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_4

    const-string/jumbo v28, "0"

    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_4

    .line 114
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 115
    .local v21, "results":Ljava/util/List;, "Ljava/util/List<Laxs;>;"
    const-string/jumbo v28, "data"

    move-object/from16 v0, v28

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 116
    .local v7, "data":Lorg/json/JSONObject;
    const-string/jumbo v28, "block"

    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 117
    .local v4, "blocks":Lorg/json/JSONArray;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v28

    move/from16 v0, v28

    if-ge v10, v0, :cond_2

    .line 118
    invoke-virtual {v4, v10}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 119
    .local v3, "block":Lorg/json/JSONObject;
    const-string/jumbo v28, "line"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v16

    .line 120
    .local v16, "lines":Lorg/json/JSONArray;
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_1
    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONArray;->length()I

    move-result v28

    move/from16 v0, v28

    if-ge v11, v0, :cond_1

    .line 121
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    .line 122
    .local v15, "line":Lorg/json/JSONObject;
    const-string/jumbo v28, "word"

    move-object/from16 v0, v28

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v27

    .line 124
    .local v27, "words":Lorg/json/JSONArray;
    const/4 v13, 0x0

    .local v13, "k":I
    :goto_2
    invoke-virtual/range {v27 .. v27}, Lorg/json/JSONArray;->length()I

    move-result v28

    move/from16 v0, v28

    if-ge v13, v0, :cond_0

    .line 125
    new-instance v19, Laxs;

    invoke-direct/range {v19 .. v19}, Laxs;-><init>()V

    .line 126
    .local v19, "recognizeResult":Laxs;
    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v26

    .line 127
    .local v26, "word":Lorg/json/JSONObject;
    const-string/jumbo v28, "content"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 128
    .local v6, "content":Ljava/lang/String;
    const-string/jumbo v28, "location"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v17

    .line 129
    .local v17, "location":Lorg/json/JSONObject;
    const-string/jumbo v28, "top_left"

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v24

    .line 130
    .local v24, "tl":Lorg/json/JSONObject;
    const-string/jumbo v28, "right_bottom"

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v18

    .line 131
    .local v18, "rb":Lorg/json/JSONObject;
    const-string/jumbo v28, "x"

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v14

    .line 132
    .local v14, "left":I
    const-string/jumbo v28, "y"

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v25

    .line 133
    .local v25, "top":I
    const-string/jumbo v28, "x"

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v22

    .line 134
    .local v22, "right":I
    const-string/jumbo v28, "y"

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 135
    .local v5, "bottom":I
    new-instance v20, Landroid/graphics/Rect;

    move-object/from16 v0, v20

    move/from16 v1, v25

    move/from16 v2, v22

    invoke-direct {v0, v14, v1, v2, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 136
    .local v20, "rect":Landroid/graphics/Rect;
    invoke-virtual/range {v19 .. v20}, Laxs;->a(Landroid/graphics/Rect;)V

    .line 137
    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Laxs;->a(Ljava/lang/String;)V

    .line 138
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2

    .line 120
    .end local v5    # "bottom":I
    .end local v6    # "content":Ljava/lang/String;
    .end local v14    # "left":I
    .end local v17    # "location":Lorg/json/JSONObject;
    .end local v18    # "rb":Lorg/json/JSONObject;
    .end local v19    # "recognizeResult":Laxs;
    .end local v20    # "rect":Landroid/graphics/Rect;
    .end local v22    # "right":I
    .end local v24    # "tl":Lorg/json/JSONObject;
    .end local v25    # "top":I
    .end local v26    # "word":Lorg/json/JSONObject;
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 117
    .end local v13    # "k":I
    .end local v15    # "line":Lorg/json/JSONObject;
    .end local v27    # "words":Lorg/json/JSONArray;
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 142
    .end local v3    # "block":Lorg/json/JSONObject;
    .end local v11    # "j":I
    .end local v16    # "lines":Lorg/json/JSONArray;
    :cond_2
    if-eqz v21, :cond_3

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->isEmpty()Z

    move-result v28

    if-nez v28, :cond_3

    .line 143
    move-object/from16 v0, p0

    iget-object v0, v0, Layv$1$1;->b:Layv$1;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Layv$1;->a:Layv;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Layv;->a(Layv;)Lays;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lays;->a(Ljava/util/List;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    .end local v4    # "blocks":Lorg/json/JSONArray;
    .end local v7    # "data":Lorg/json/JSONObject;
    .end local v9    # "error":Ljava/lang/String;
    .end local v10    # "i":I
    .end local v12    # "jsonObject":Lorg/json/JSONObject;
    .end local v21    # "results":Ljava/util/List;, "Ljava/util/List<Laxs;>;"
    .end local v23    # "sid":Ljava/lang/String;
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Layv$1$1;->b:Layv$1;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Layv$1;->a:Layv;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Layv;->b(Layv;)Landroid/content/Context;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lxq;->a(Landroid/content/Context;)Lxq;

    move-result-object v28

    const-string/jumbo v29, "invalidPic"

    invoke-virtual/range {v28 .. v29}, Lxq;->g(Ljava/lang/String;)V

    .line 154
    return-void

    .line 145
    .restart local v4    # "blocks":Lorg/json/JSONArray;
    .restart local v7    # "data":Lorg/json/JSONObject;
    .restart local v9    # "error":Ljava/lang/String;
    .restart local v10    # "i":I
    .restart local v12    # "jsonObject":Lorg/json/JSONObject;
    .restart local v21    # "results":Ljava/util/List;, "Ljava/util/List<Laxs;>;"
    .restart local v23    # "sid":Ljava/lang/String;
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Layv$1$1;->b:Layv$1;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Layv$1;->a:Layv;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Layv;->a(Layv;)Lays;

    move-result-object v28

    const/16 v29, 0x0

    const-string/jumbo v30, "\u62b1\u6b49\uff0c\u6ca1\u6709\u8bc6\u522b\u5230\u8981\u7ffb\u8bd1\u7684\u6587\u5b57"

    invoke-interface/range {v28 .. v30}, Lays;->a(ILjava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 150
    .end local v4    # "blocks":Lorg/json/JSONArray;
    .end local v7    # "data":Lorg/json/JSONObject;
    .end local v9    # "error":Ljava/lang/String;
    .end local v10    # "i":I
    .end local v12    # "jsonObject":Lorg/json/JSONObject;
    .end local v21    # "results":Ljava/util/List;, "Ljava/util/List<Laxs;>;"
    .end local v23    # "sid":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 151
    .local v8, "e":Lorg/json/JSONException;
    move-object/from16 v0, p0

    iget-object v0, v0, Layv$1$1;->b:Layv$1;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Layv$1;->a:Layv;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Layv;->a(Layv;)Lays;

    move-result-object v28

    const/16 v29, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Layv$1$1;->a:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-interface/range {v28 .. v30}, Lays;->a(ILjava/lang/String;)V

    goto :goto_3

    .line 148
    .end local v8    # "e":Lorg/json/JSONException;
    .restart local v9    # "error":Ljava/lang/String;
    .restart local v12    # "jsonObject":Lorg/json/JSONObject;
    .restart local v23    # "sid":Ljava/lang/String;
    :cond_4
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Layv$1$1;->b:Layv$1;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Layv$1;->a:Layv;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Layv;->a(Layv;)Lays;

    move-result-object v28

    const/16 v29, 0x1

    const-string/jumbo v30, "\u8bc6\u522b\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    invoke-interface/range {v28 .. v30}, Lays;->a(ILjava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3
.end method
