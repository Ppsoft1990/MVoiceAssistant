.class public Lrw;
.super Ljava/lang/Object;
.source "ComponentsStubBindingManager.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/String;

.field private h:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/lang/String;

.field private l:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/lang/String;

.field private o:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lrw;->d:Ljava/util/TreeMap;

    .line 45
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lrw;->e:Ljava/util/TreeMap;

    .line 46
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lrw;->f:Ljava/util/TreeMap;

    .line 47
    iput-object v1, p0, Lrw;->g:Ljava/lang/String;

    .line 54
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lrw;->h:Ljava/util/TreeMap;

    .line 55
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lrw;->i:Ljava/util/TreeMap;

    .line 56
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lrw;->j:Ljava/util/TreeMap;

    .line 57
    iput-object v1, p0, Lrw;->k:Ljava/lang/String;

    .line 64
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lrw;->l:Ljava/util/TreeMap;

    .line 71
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lrw;->m:Ljava/util/TreeMap;

    .line 73
    iput-object v1, p0, Lrw;->n:Ljava/lang/String;

    return-void
.end method

.method private d(Landroid/content/pm/ActivityInfo;)Z
    .locals 15
    .param p1, "targetInfo"    # Landroid/content/pm/ActivityInfo;

    .prologue
    const/4 v11, 0x0

    .line 471
    const/4 v7, 0x0

    .line 472
    .local v7, "Window_windowIsTranslucent":Z
    const/4 v6, 0x0

    .line 473
    .local v6, "Window_windowIsFloating":Z
    const/4 v8, 0x0

    .line 475
    .local v8, "Window_windowShowWallpaper":Z
    :try_start_0
    const-string/jumbo v12, "com.android.internal.R$styleable"

    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 476
    .local v1, "R_Styleable_Class":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v12, "Window"

    invoke-static {v1, v12}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->readStaticField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [I

    move-object v0, v12

    check-cast v0, [I

    move-object v2, v0

    .line 477
    .local v2, "R_Styleable_Window":[I
    const-string/jumbo v12, "Window_windowIsTranslucent"

    invoke-static {v1, v12}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->readStaticField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 478
    .local v4, "R_Styleable_Window_windowIsTranslucent":I
    const-string/jumbo v12, "Window_windowIsFloating"

    invoke-static {v1, v12}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->readStaticField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 479
    .local v3, "R_Styleable_Window_windowIsFloating":I
    const-string/jumbo v12, "Window_windowShowWallpaper"

    invoke-static {v1, v12}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->readStaticField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 481
    .local v5, "R_Styleable_Window_windowShowWallpaper":I
    invoke-static {}, Lcom/iflytek/greenplug/common/utils/AttributeCache;->instance()Lcom/iflytek/greenplug/common/utils/AttributeCache;

    move-result-object v12

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v14, v0, Landroid/content/pm/ActivityInfo;->theme:I

    invoke-virtual {v12, v13, v14, v2}, Lcom/iflytek/greenplug/common/utils/AttributeCache;->get(Ljava/lang/String;I[I)Lcom/iflytek/greenplug/common/utils/AttributeCache$Entry;

    move-result-object v10

    .line 482
    .local v10, "ent":Lcom/iflytek/greenplug/common/utils/AttributeCache$Entry;
    if-eqz v10, :cond_0

    iget-object v12, v10, Lcom/iflytek/greenplug/common/utils/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    if-eqz v12, :cond_0

    .line 483
    iget-object v12, v10, Lcom/iflytek/greenplug/common/utils/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/4 v13, 0x0

    invoke-virtual {v12, v4, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    .line 484
    iget-object v12, v10, Lcom/iflytek/greenplug/common/utils/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/4 v13, 0x0

    invoke-virtual {v12, v3, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    .line 485
    iget-object v12, v10, Lcom/iflytek/greenplug/common/utils/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/4 v13, 0x0

    invoke-virtual {v12, v5, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 491
    .end local v1    # "R_Styleable_Class":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "R_Styleable_Window":[I
    .end local v3    # "R_Styleable_Window_windowIsFloating":I
    .end local v4    # "R_Styleable_Window_windowIsTranslucent":I
    .end local v5    # "R_Styleable_Window_windowShowWallpaper":I
    .end local v10    # "ent":Lcom/iflytek/greenplug/common/utils/AttributeCache$Entry;
    :cond_0
    :goto_0
    if-nez v7, :cond_1

    if-nez v6, :cond_1

    if-eqz v8, :cond_2

    :cond_1
    const/4 v11, 0x1

    .line 493
    .local v11, "useDialogStyle":Z
    :cond_2
    const-string/jumbo v12, "ComponentsStubBindingManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "useDialogStyle is "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    return v11

    .line 487
    .end local v11    # "useDialogStyle":Z
    :catch_0
    move-exception v9

    .line 488
    .local v9, "e":Ljava/lang/Throwable;
    const-string/jumbo v12, "ComponentsStubBindingManager"

    const-string/jumbo v13, "error on read com.android.internal.R$styleable"

    invoke-static {v12, v13, v9}, Lcom/iflytek/greenplug/common/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private e()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 101
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 102
    .local v0, "launchModeIntent":Landroid/content/Intent;
    iget-object v3, p0, Lrw;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    iget-object v3, p0, Lrw;->o:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    iget-object v3, p0, Lrw;->o:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/high16 v4, 0x10000

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 107
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_5

    .line 108
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 109
    .local v2, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->launchMode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 110
    iget-object v4, p0, Lrw;->e:Ljava/util/TreeMap;

    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    :cond_1
    :goto_1
    iget-object v4, p0, Lrw;->a:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 119
    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iput-object v4, p0, Lrw;->a:Ljava/lang/String;

    goto :goto_0

    .line 111
    :cond_2
    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->launchMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 112
    iget-object v4, p0, Lrw;->d:Ljava/util/TreeMap;

    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 113
    :cond_3
    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->launchMode:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_4

    .line 114
    iget-object v4, p0, Lrw;->f:Ljava/util/TreeMap;

    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 115
    :cond_4
    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->launchMode:I

    if-nez v4, :cond_1

    .line 116
    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object v4, p0, Lrw;->g:Ljava/lang/String;

    goto :goto_1

    .line 123
    .end local v2    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_5
    return-void
.end method

.method private f()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 126
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 127
    .local v0, "launchModeIntent":Landroid/content/Intent;
    iget-object v3, p0, Lrw;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    iget-object v3, p0, Lrw;->o:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    iget-object v3, p0, Lrw;->o:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/high16 v4, 0x10000

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 132
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_5

    .line 133
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 134
    .local v2, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->launchMode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 135
    iget-object v4, p0, Lrw;->i:Ljava/util/TreeMap;

    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    :cond_1
    :goto_1
    iget-object v4, p0, Lrw;->a:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 144
    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iput-object v4, p0, Lrw;->a:Ljava/lang/String;

    goto :goto_0

    .line 136
    :cond_2
    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->launchMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 137
    iget-object v4, p0, Lrw;->h:Ljava/util/TreeMap;

    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 138
    :cond_3
    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->launchMode:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_4

    .line 139
    iget-object v4, p0, Lrw;->j:Ljava/util/TreeMap;

    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 140
    :cond_4
    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->launchMode:I

    if-nez v4, :cond_1

    .line 141
    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object v4, p0, Lrw;->k:Ljava/lang/String;

    goto :goto_1

    .line 148
    .end local v2    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_5
    return-void
.end method

.method private g()V
    .locals 7

    .prologue
    .line 151
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 152
    .local v0, "launchModeIntent":Landroid/content/Intent;
    iget-object v3, p0, Lrw;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    iget-object v3, p0, Lrw;->o:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    iget-object v3, p0, Lrw;->o:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/high16 v4, 0x10000

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 157
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 158
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 159
    .local v2, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v4, p0, Lrw;->l:Ljava/util/TreeMap;

    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    iget-object v4, p0, Lrw;->a:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 161
    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    iput-object v4, p0, Lrw;->a:Ljava/lang/String;

    goto :goto_0

    .line 165
    .end local v2    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_1
    return-void
.end method

.method private h()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 168
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 169
    .local v0, "exactStub":Landroid/content/Intent;
    iget-object v2, p0, Lrw;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    iget-object v2, p0, Lrw;->o:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    iget-object v2, p0, Lrw;->o:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x10000

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 174
    .local v1, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 175
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object v2, p0, Lrw;->n:Ljava/lang/String;

    .line 176
    iget-object v2, p0, Lrw;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 177
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iput-object v2, p0, Lrw;->a:Ljava/lang/String;

    .line 180
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/content/pm/ServiceInfo;)Landroid/content/ComponentName;
    .locals 8
    .param p1, "pluginServiceInfo"    # Landroid/content/pm/ServiceInfo;

    .prologue
    const/4 v4, 0x0

    .line 366
    new-instance v3, Landroid/content/ComponentName;

    iget-object v5, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v6, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    .local v3, "pluginServiceComponent":Landroid/content/ComponentName;
    if-nez v3, :cond_0

    .line 369
    const-string/jumbo v5, "ComponentsStubBindingManager"

    const-string/jumbo v6, "bindStubService begin, pluginServiceComponent is null, so return"

    invoke-static {v5, v6}, Lcom/iflytek/greenplug/common/utils/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    :goto_0
    return-object v4

    .line 372
    :cond_0
    const-string/jumbo v5, "ComponentsStubBindingManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "bindStubService begin, pluginServiceComponent is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/iflytek/greenplug/common/utils/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    iget-object v5, p0, Lrw;->l:Ljava/util/TreeMap;

    invoke-virtual {v5}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 376
    .local v2, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/ComponentName;>;>;"
    const/4 v1, 0x0

    .line 378
    .local v1, "idleStubServiceName":Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 379
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 380
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/ComponentName;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_2

    .line 381
    if-nez v1, :cond_1

    .line 382
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "idleStubServiceName":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .restart local v1    # "idleStubServiceName":Ljava/lang/String;
    goto :goto_1

    .line 385
    :cond_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 387
    const-string/jumbo v4, "ComponentsStubBindingManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "bindStubService end, \u5df2\u7ecf\u7ed1\u5b9a\u8fc7:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/iflytek/greenplug/common/utils/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    new-instance v5, Landroid/content/ComponentName;

    iget-object v4, p0, Lrw;->o:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v5, v6, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v5

    goto :goto_0

    .line 393
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/ComponentName;>;"
    :cond_3
    if-eqz v1, :cond_4

    .line 394
    const-string/jumbo v4, "ComponentsStubBindingManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "bindStubService end, \u6dfb\u52a0\u7ed1\u5b9a:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " ,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/iflytek/greenplug/common/utils/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    iget-object v4, p0, Lrw;->l:Ljava/util/TreeMap;

    invoke-virtual {v4, v1, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, p0, Lrw;->o:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 400
    :cond_4
    const-string/jumbo v5, "ComponentsStubBindingManager"

    const-string/jumbo v6, "bindStubService end, not found right binding"

    invoke-static {v5, v6}, Lcom/iflytek/greenplug/common/utils/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 466
    const-string/jumbo v0, "ComponentsStubBindingManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "bindStubReceiver:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lrw;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/greenplug/common/utils/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    iget-object v0, p0, Lrw;->n:Ljava/lang/String;

    return-object v0
.end method

.method public a(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;
    .locals 10
    .param p1, "activityInfo"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 189
    if-nez p1, :cond_0

    .line 190
    const-string/jumbo v7, "ComponentsStubBindingManager"

    const-string/jumbo v8, "bindStubActivity begin, activityInfo is null, so return"

    invoke-static {v7, v8}, Lcom/iflytek/greenplug/common/utils/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const/4 v2, 0x0

    .line 258
    :goto_0
    return-object v2

    .line 193
    :cond_0
    const-string/jumbo v7, "ComponentsStubBindingManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "bindStubActivity begin, activityInfo is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/iflytek/greenplug/common/utils/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    iget-object v5, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 196
    .local v5, "pluginActivityClassName":Ljava/lang/String;
    iget v4, p1, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 197
    .local v4, "launchMode":I
    invoke-direct {p0, p1}, Lrw;->d(Landroid/content/pm/ActivityInfo;)Z

    move-result v6

    .line 199
    .local v6, "useDialogStyle":Z
    const/4 v0, 0x0

    .line 200
    .local v0, "bindingMapping":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 201
    .local v2, "idleStubActivityName":Ljava/lang/String;
    if-nez v4, :cond_3

    .line 202
    if-eqz v6, :cond_2

    .line 203
    iget-object v2, p0, Lrw;->k:Ljava/lang/String;

    .line 227
    :cond_1
    :goto_1
    if-eqz v2, :cond_9

    .line 228
    const-string/jumbo v7, "ComponentsStubBindingManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "bindStubActivity end, \u6dfb\u52a0\u7ed1\u5b9a:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " ,"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/iflytek/greenplug/common/utils/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 205
    :cond_2
    iget-object v2, p0, Lrw;->g:Ljava/lang/String;

    goto :goto_1

    .line 207
    :cond_3
    const/4 v7, 0x2

    if-ne v4, v7, :cond_5

    .line 208
    if-eqz v6, :cond_4

    .line 209
    iget-object v0, p0, Lrw;->i:Ljava/util/TreeMap;

    goto :goto_1

    .line 211
    :cond_4
    iget-object v0, p0, Lrw;->e:Ljava/util/TreeMap;

    goto :goto_1

    .line 213
    :cond_5
    const/4 v7, 0x1

    if-ne v4, v7, :cond_7

    .line 214
    if-eqz v6, :cond_6

    .line 215
    iget-object v0, p0, Lrw;->h:Ljava/util/TreeMap;

    goto :goto_1

    .line 217
    :cond_6
    iget-object v0, p0, Lrw;->d:Ljava/util/TreeMap;

    goto :goto_1

    .line 219
    :cond_7
    const/4 v7, 0x3

    if-ne v4, v7, :cond_1

    .line 220
    if-eqz v6, :cond_8

    .line 221
    iget-object v0, p0, Lrw;->j:Ljava/util/TreeMap;

    goto :goto_1

    .line 223
    :cond_8
    iget-object v0, p0, Lrw;->f:Ljava/util/TreeMap;

    goto :goto_1

    .line 231
    :cond_9
    if-eqz v0, :cond_d

    .line 232
    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 234
    .local v3, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_a
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 235
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 236
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_b

    .line 237
    if-nez v2, :cond_a

    .line 238
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "idleStubActivityName":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .restart local v2    # "idleStubActivityName":Ljava/lang/String;
    goto :goto_2

    .line 241
    :cond_b
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 243
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "idleStubActivityName":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 244
    .restart local v2    # "idleStubActivityName":Ljava/lang/String;
    const-string/jumbo v7, "ComponentsStubBindingManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "bindStubActivity end, \u5df2\u7ecf\u7ed1\u5b9a\u8fc7:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " ,"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/iflytek/greenplug/common/utils/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 250
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_c
    if-eqz v2, :cond_d

    .line 251
    const-string/jumbo v7, "ComponentsStubBindingManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "bindStubActivity end, \u6dfb\u52a0\u7ed1\u5b9a:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " ,"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/iflytek/greenplug/common/utils/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    invoke-virtual {v0, v2, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 257
    .end local v3    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_d
    const-string/jumbo v7, "ComponentsStubBindingManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "bindStubActivity end, not found right stub activity, \u53ea\u597d\u6dfb\u52a0\u9ed8\u8ba4\u7ed1\u5b9a:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lrw;->g:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " ,"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/iflytek/greenplug/common/utils/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    iget-object v2, p0, Lrw;->g:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "stub_action"    # Ljava/lang/String;
    .param p3, "dialog_stub_action"    # Ljava/lang/String;

    .prologue
    .line 78
    const-string/jumbo v2, "ComponentsStubBindingManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ComponentsStubBindingManager init begin, stub_action is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ,dialog_stub_action is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 81
    .local v0, "beginTime":J
    iput-object p1, p0, Lrw;->o:Landroid/content/Context;

    .line 83
    iput-object p2, p0, Lrw;->b:Ljava/lang/String;

    .line 85
    iput-object p3, p0, Lrw;->c:Ljava/lang/String;

    .line 87
    invoke-static {p1}, Lcom/iflytek/greenplug/common/utils/AttributeCache;->init(Landroid/content/Context;)V

    .line 89
    invoke-direct {p0}, Lrw;->e()V

    .line 91
    invoke-direct {p0}, Lrw;->f()V

    .line 93
    invoke-direct {p0}, Lrw;->g()V

    .line 95
    invoke-direct {p0}, Lrw;->h()V

    .line 97
    const-string/jumbo v2, "ComponentsStubBindingManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ComponentsStubBindingManager init end, stub_action is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ,cost time:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method public b(Landroid/content/pm/ServiceInfo;)Landroid/content/ComponentName;
    .locals 8
    .param p1, "stubServiceInfo"    # Landroid/content/pm/ServiceInfo;

    .prologue
    .line 405
    const-string/jumbo v5, "ComponentsStubBindingManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getBindingPluginServiceComponent begin, stubServiceInfo is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/iflytek/greenplug/common/utils/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    const/4 v3, 0x0

    .line 408
    .local v3, "pluginComponent":Landroid/content/ComponentName;
    iget-object v5, p0, Lrw;->l:Ljava/util/TreeMap;

    invoke-virtual {v5}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 410
    .local v2, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/ComponentName;>;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 411
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 412
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/ComponentName;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 413
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "pluginComponent":Landroid/content/ComponentName;
    check-cast v3, Landroid/content/ComponentName;

    .line 414
    .restart local v3    # "pluginComponent":Landroid/content/ComponentName;
    const-string/jumbo v5, "ComponentsStubBindingManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "find binding service in serviceMap:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/iflytek/greenplug/common/utils/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/ComponentName;>;"
    :cond_1
    if-eqz v3, :cond_2

    .line 420
    const-string/jumbo v5, "ComponentsStubBindingManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getBindingPluginServiceComponent end, result:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/iflytek/greenplug/common/utils/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v3

    .line 441
    .end local v3    # "pluginComponent":Landroid/content/ComponentName;
    .local v4, "pluginComponent":Landroid/content/ComponentName;
    :goto_0
    return-object v4

    .line 425
    .end local v4    # "pluginComponent":Landroid/content/ComponentName;
    .restart local v3    # "pluginComponent":Landroid/content/ComponentName;
    :cond_2
    iget-object v5, p0, Lrw;->m:Ljava/util/TreeMap;

    invoke-virtual {v5}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 427
    .local v1, "hisItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/ComponentName;>;>;"
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 428
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 429
    .restart local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/ComponentName;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 430
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "pluginComponent":Landroid/content/ComponentName;
    check-cast v3, Landroid/content/ComponentName;

    .line 432
    .restart local v3    # "pluginComponent":Landroid/content/ComponentName;
    if-eqz v3, :cond_4

    .line 433
    iget-object v5, p0, Lrw;->l:Ljava/util/TreeMap;

    iget-object v6, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    :cond_4
    const-string/jumbo v5, "ComponentsStubBindingManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "find binding service in historyMap:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/iflytek/greenplug/common/utils/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/ComponentName;>;"
    :cond_5
    const-string/jumbo v5, "ComponentsStubBindingManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getBindingPluginServiceComponent end, result:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/iflytek/greenplug/common/utils/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v3

    .line 441
    .end local v3    # "pluginComponent":Landroid/content/ComponentName;
    .restart local v4    # "pluginComponent":Landroid/content/ComponentName;
    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 498
    iget-object v0, p0, Lrw;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;
    .locals 10
    .param p1, "activityInfo"    # Landroid/content/pm/ActivityInfo;

    .prologue
    const/4 v5, 0x0

    .line 262
    if-nez p1, :cond_0

    .line 263
    const-string/jumbo v7, "ComponentsStubBindingManager"

    const-string/jumbo v8, "getBindingStubActivityName begin, activityInfo is null, so return"

    invoke-static {v7, v8}, Lcom/iflytek/greenplug/common/utils/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    :goto_0
    return-object v5

    .line 266
    :cond_0
    const-string/jumbo v7, "ComponentsStubBindingManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getBindingStubActivityName begin, activityInfo is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/iflytek/greenplug/common/utils/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    iget-object v4, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 269
    .local v4, "pluginActivityClassName":Ljava/lang/String;
    iget v3, p1, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 270
    .local v3, "launchMode":I
    invoke-direct {p0, p1}, Lrw;->d(Landroid/content/pm/ActivityInfo;)Z

    move-result v6

    .line 272
    .local v6, "useDialogStyle":Z
    const/4 v0, 0x0

    .line 273
    .local v0, "bindingMapping":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v3, :cond_2

    .line 274
    if-eqz v6, :cond_1

    .line 275
    const-string/jumbo v7, "ComponentsStubBindingManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getBindingStubActivityName end, find stub activity:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lrw;->k:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/iflytek/greenplug/common/utils/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    iget-object v5, p0, Lrw;->k:Ljava/lang/String;

    goto :goto_0

    .line 278
    :cond_1
    const-string/jumbo v7, "ComponentsStubBindingManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getBindingStubActivityName end, find stub activity:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lrw;->g:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/iflytek/greenplug/common/utils/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    iget-object v5, p0, Lrw;->g:Ljava/lang/String;

    goto :goto_0

    .line 281
    :cond_2
    const/4 v7, 0x2

    if-ne v3, v7, :cond_6

    .line 282
    if-eqz v6, :cond_5

    .line 283
    iget-object v0, p0, Lrw;->i:Ljava/util/TreeMap;

    .line 301
    :cond_3
    :goto_1
    if-eqz v0, :cond_a

    .line 302
    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 303
    .local v2, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 304
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 305
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 306
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 307
    .local v5, "stubActivityName":Ljava/lang/String;
    const-string/jumbo v7, "ComponentsStubBindingManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getBindingStubActivityName end, find stub activity:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/iflytek/greenplug/common/utils/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 285
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v5    # "stubActivityName":Ljava/lang/String;
    :cond_5
    iget-object v0, p0, Lrw;->e:Ljava/util/TreeMap;

    goto :goto_1

    .line 287
    :cond_6
    const/4 v7, 0x1

    if-ne v3, v7, :cond_8

    .line 288
    if-eqz v6, :cond_7

    .line 289
    iget-object v0, p0, Lrw;->h:Ljava/util/TreeMap;

    goto :goto_1

    .line 291
    :cond_7
    iget-object v0, p0, Lrw;->d:Ljava/util/TreeMap;

    goto :goto_1

    .line 293
    :cond_8
    const/4 v7, 0x3

    if-ne v3, v7, :cond_3

    .line 294
    if-eqz v6, :cond_9

    .line 295
    iget-object v0, p0, Lrw;->j:Ljava/util/TreeMap;

    goto :goto_1

    .line 297
    :cond_9
    iget-object v0, p0, Lrw;->f:Ljava/util/TreeMap;

    goto :goto_1

    .line 313
    :cond_a
    const-string/jumbo v7, "ComponentsStubBindingManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getBindingStubActivityName end, find stub activity:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/iflytek/greenplug/common/utils/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public c()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 502
    const-string/jumbo v0, "ComponentsStubBindingManager"

    const-string/jumbo v1, "ComponentsStubBindingManager clear begin"

    invoke-static {v0, v1}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    iget-object v0, p0, Lrw;->d:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    .line 505
    iget-object v0, p0, Lrw;->e:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    .line 506
    iget-object v0, p0, Lrw;->f:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    .line 507
    iput-object v2, p0, Lrw;->g:Ljava/lang/String;

    .line 509
    iget-object v0, p0, Lrw;->h:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    .line 510
    iget-object v0, p0, Lrw;->i:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    .line 511
    iget-object v0, p0, Lrw;->j:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    .line 512
    iput-object v2, p0, Lrw;->k:Ljava/lang/String;

    .line 515
    iget-object v0, p0, Lrw;->m:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    .line 516
    iget-object v0, p0, Lrw;->m:Ljava/util/TreeMap;

    iget-object v1, p0, Lrw;->l:Ljava/util/TreeMap;

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    .line 519
    iget-object v0, p0, Lrw;->l:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    .line 521
    iput-object v2, p0, Lrw;->n:Ljava/lang/String;

    .line 523
    iget-object v0, p0, Lrw;->o:Landroid/content/Context;

    iget-object v1, p0, Lrw;->b:Ljava/lang/String;

    iget-object v2, p0, Lrw;->c:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lrw;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    const-string/jumbo v0, "ComponentsStubBindingManager"

    const-string/jumbo v1, "ComponentsStubBindingManager clear end"

    invoke-static {v0, v1}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    return-void
.end method

.method public c(Landroid/content/pm/ActivityInfo;)V
    .locals 9
    .param p1, "activityInfo"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 318
    if-nez p1, :cond_1

    .line 319
    const-string/jumbo v6, "ComponentsStubBindingManager"

    const-string/jumbo v7, "unBindStubActivity begin, activityInfo is null, so return"

    invoke-static {v6, v7}, Lcom/iflytek/greenplug/common/utils/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    :cond_0
    :goto_0
    return-void

    .line 322
    :cond_1
    const-string/jumbo v6, "ComponentsStubBindingManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "unBindStubActivity begin, activityInfo is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/iflytek/greenplug/common/utils/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    iget-object v4, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 325
    .local v4, "pluginActivityClassName":Ljava/lang/String;
    iget v3, p1, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 326
    .local v3, "launchMode":I
    invoke-direct {p0, p1}, Lrw;->d(Landroid/content/pm/ActivityInfo;)Z

    move-result v5

    .line 328
    .local v5, "useDialogStyle":Z
    const/4 v0, 0x0

    .line 329
    .local v0, "bindingMapping":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v3, :cond_4

    .line 330
    const-string/jumbo v6, "ComponentsStubBindingManager"

    const-string/jumbo v7, "unBindStubActivity end, launchMode is LAUNCH_MULTIPLE"

    invoke-static {v6, v7}, Lcom/iflytek/greenplug/common/utils/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    .line 352
    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 353
    .local v2, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 354
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 355
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 357
    const-string/jumbo v6, "ComponentsStubBindingManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "unBindStubActivity end, \u56de\u6536\u7ed1\u5b9a:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/iflytek/greenplug/common/utils/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 331
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_4
    const/4 v6, 0x2

    if-ne v3, v6, :cond_6

    .line 332
    if-eqz v5, :cond_5

    .line 333
    iget-object v0, p0, Lrw;->i:Ljava/util/TreeMap;

    goto :goto_1

    .line 335
    :cond_5
    iget-object v0, p0, Lrw;->e:Ljava/util/TreeMap;

    goto :goto_1

    .line 337
    :cond_6
    const/4 v6, 0x1

    if-ne v3, v6, :cond_8

    .line 338
    if-eqz v5, :cond_7

    .line 339
    iget-object v0, p0, Lrw;->h:Ljava/util/TreeMap;

    goto :goto_1

    .line 341
    :cond_7
    iget-object v0, p0, Lrw;->d:Ljava/util/TreeMap;

    goto :goto_1

    .line 343
    :cond_8
    const/4 v6, 0x3

    if-ne v3, v6, :cond_2

    .line 344
    if-eqz v5, :cond_9

    .line 345
    iget-object v0, p0, Lrw;->j:Ljava/util/TreeMap;

    goto :goto_1

    .line 347
    :cond_9
    iget-object v0, p0, Lrw;->f:Ljava/util/TreeMap;

    goto :goto_1
.end method

.method public c(Landroid/content/pm/ServiceInfo;)V
    .locals 6
    .param p1, "pluginServiceInfo"    # Landroid/content/pm/ServiceInfo;

    .prologue
    .line 445
    const-string/jumbo v3, "ComponentsStubBindingManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unBindStubService begin, pluginServiceInfo is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/iflytek/greenplug/common/utils/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    iget-object v2, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 449
    .local v2, "pluginServiceName":Ljava/lang/String;
    iget-object v3, p0, Lrw;->l:Ljava/util/TreeMap;

    invoke-virtual {v3}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 450
    .local v1, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/ComponentName;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 451
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 452
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/ComponentName;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    .line 453
    const-string/jumbo v4, "ComponentsStubBindingManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "entry: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " ,value is null"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 456
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 458
    const-string/jumbo v3, "ComponentsStubBindingManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unBindStubService end, \u56de\u6536\u7ed1\u5b9a:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/iflytek/greenplug/common/utils/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    iget-object v3, p0, Lrw;->l:Ljava/util/TreeMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/ComponentName;>;"
    :cond_2
    return-void
.end method

.method public d()Ljava/util/TreeMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 528
    iget-object v0, p0, Lrw;->l:Ljava/util/TreeMap;

    return-object v0
.end method
