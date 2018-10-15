.class Lcom/iflytek/base/clipboard/ClipboardSDK11_;
.super Ljava/lang/Object;
.source "ClipboardSDK11_.java"

# interfaces
.implements Lcom/iflytek/base/clipboard/IClipboardManager;


# static fields
.field private static final TAG:Ljava/lang/String; = "ClipboardSDK11_"


# instance fields
.field private mClipService:Ljava/lang/Object;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string/jumbo v0, "clipboard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/base/clipboard/ClipboardSDK11_;->mClipService:Ljava/lang/Object;

    .line 24
    return-void
.end method


# virtual methods
.method public copy(Ljava/lang/CharSequence;)V
    .locals 9
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 31
    :try_start_0
    const-string/jumbo v5, "android.content.ClipData"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 32
    .local v0, "clipDataClass":Ljava/lang/Class;
    const-string/jumbo v5, "newPlainText"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/CharSequence;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-class v8, Ljava/lang/CharSequence;

    aput-object v8, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 33
    .local v3, "method1":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "text"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 35
    .local v1, "clipDataObject":Ljava/lang/Object;
    iget-object v5, p0, Lcom/iflytek/base/clipboard/ClipboardSDK11_;->mClipService:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string/jumbo v6, "setPrimaryClip"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 36
    .local v4, "method2":Ljava/lang/reflect/Method;
    iget-object v5, p0, Lcom/iflytek/base/clipboard/ClipboardSDK11_;->mClipService:Ljava/lang/Object;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .end local v0    # "clipDataClass":Ljava/lang/Class;
    .end local v1    # "clipDataObject":Ljava/lang/Object;
    .end local v3    # "method1":Ljava/lang/reflect/Method;
    .end local v4    # "method2":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 37
    :catch_0
    move-exception v2

    .line 38
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "ClipboardSDK11_"

    const-string/jumbo v6, "copy()"

    invoke-static {v5, v6, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public paste()Ljava/lang/CharSequence;
    .locals 19

    .prologue
    .line 46
    const/4 v14, 0x0

    .line 50
    .local v14, "result":Ljava/lang/CharSequence;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/iflytek/base/clipboard/ClipboardSDK11_;->mClipService:Ljava/lang/Object;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    const-string/jumbo v16, "getPrimaryClip"

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    .line 51
    .local v9, "method1":Ljava/lang/reflect/Method;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/iflytek/base/clipboard/ClipboardSDK11_;->mClipService:Ljava/lang/Object;

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 54
    .local v2, "clipDataObject":Ljava/lang/Object;
    const-string/jumbo v15, "android.content.ClipData"

    invoke-static {v15}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 55
    .local v1, "clipDataClass":Ljava/lang/Class;
    const-string/jumbo v15, "getDescription"

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v1, v15, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    .line 56
    .local v10, "method2":Ljava/lang/reflect/Method;
    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-virtual {v10, v2, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 59
    .local v4, "clipDescriptionObject":Ljava/lang/Object;
    const-string/jumbo v15, "android.content.ClipDescription"

    invoke-static {v15}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 60
    .local v3, "clipDescriptionClass":Ljava/lang/Class;
    const-string/jumbo v15, "hasMimeType"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-class v18, Ljava/lang/String;

    aput-object v18, v16, v17

    move-object/from16 v0, v16

    invoke-virtual {v3, v15, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    .line 61
    .local v11, "method3":Ljava/lang/reflect/Method;
    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const-string/jumbo v17, "text/plain"

    aput-object v17, v15, v16

    invoke-virtual {v11, v4, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Boolean;

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 62
    .local v6, "hasText":Z
    if-eqz v6, :cond_0

    .line 64
    const-string/jumbo v15, "getItemAt"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    sget-object v18, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v18, v16, v17

    move-object/from16 v0, v16

    invoke-virtual {v1, v15, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    .line 65
    .local v12, "method4":Ljava/lang/reflect/Method;
    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v12, v2, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 68
    .local v8, "itemObject":Ljava/lang/Object;
    const-string/jumbo v15, "android.content.ClipData$Item"

    invoke-static {v15}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 69
    .local v7, "itemClass":Ljava/lang/Class;
    const-string/jumbo v15, "getText"

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v13

    .line 70
    .local v13, "method5":Ljava/lang/reflect/Method;
    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-virtual {v13, v8, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    move-object v0, v15

    check-cast v0, Ljava/lang/CharSequence;

    move-object v14, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .end local v1    # "clipDataClass":Ljava/lang/Class;
    .end local v2    # "clipDataObject":Ljava/lang/Object;
    .end local v3    # "clipDescriptionClass":Ljava/lang/Class;
    .end local v4    # "clipDescriptionObject":Ljava/lang/Object;
    .end local v6    # "hasText":Z
    .end local v7    # "itemClass":Ljava/lang/Class;
    .end local v8    # "itemObject":Ljava/lang/Object;
    .end local v9    # "method1":Ljava/lang/reflect/Method;
    .end local v10    # "method2":Ljava/lang/reflect/Method;
    .end local v11    # "method3":Ljava/lang/reflect/Method;
    .end local v12    # "method4":Ljava/lang/reflect/Method;
    .end local v13    # "method5":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-object v14

    .line 72
    :catch_0
    move-exception v5

    .line 73
    .local v5, "e":Ljava/lang/Exception;
    const-string/jumbo v15, "ClipboardSDK11_"

    const-string/jumbo v16, "paste()"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v5}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
