.class public final Lcom/iflytek/greenplug/common/utils/AttributeCache;
.super Ljava/lang/Object;
.source "AttributeCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/greenplug/common/utils/AttributeCache$Entry;,
        Lcom/iflytek/greenplug/common/utils/AttributeCache$Package;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/iflytek/greenplug/common/utils/AttributeCache;


# instance fields
.field private final mConfiguration:Landroid/content/res/Configuration;

.field private final mContext:Landroid/content/Context;

.field private final mPackages:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/iflytek/greenplug/common/utils/AttributeCache$Package;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    sput-object v0, Lcom/iflytek/greenplug/common/utils/AttributeCache;->sInstance:Lcom/iflytek/greenplug/common/utils/AttributeCache;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/iflytek/greenplug/common/utils/AttributeCache;->mPackages:Ljava/util/WeakHashMap;

    .line 41
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/iflytek/greenplug/common/utils/AttributeCache;->mConfiguration:Landroid/content/res/Configuration;

    .line 74
    iput-object p1, p0, Lcom/iflytek/greenplug/common/utils/AttributeCache;->mContext:Landroid/content/Context;

    .line 75
    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    sget-object v0, Lcom/iflytek/greenplug/common/utils/AttributeCache;->sInstance:Lcom/iflytek/greenplug/common/utils/AttributeCache;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Lcom/iflytek/greenplug/common/utils/AttributeCache;

    invoke-direct {v0, p0}, Lcom/iflytek/greenplug/common/utils/AttributeCache;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/iflytek/greenplug/common/utils/AttributeCache;->sInstance:Lcom/iflytek/greenplug/common/utils/AttributeCache;

    .line 67
    :cond_0
    return-void
.end method

.method public static instance()Lcom/iflytek/greenplug/common/utils/AttributeCache;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/iflytek/greenplug/common/utils/AttributeCache;->sInstance:Lcom/iflytek/greenplug/common/utils/AttributeCache;

    return-object v0
.end method


# virtual methods
.method public get(Ljava/lang/String;I[I)Lcom/iflytek/greenplug/common/utils/AttributeCache$Entry;
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resId"    # I
    .param p3, "styleable"    # [I

    .prologue
    const/4 v6, 0x0

    .line 98
    monitor-enter p0

    .line 99
    :try_start_0
    iget-object v7, p0, Lcom/iflytek/greenplug/common/utils/AttributeCache;->mPackages:Ljava/util/WeakHashMap;

    invoke-virtual {v7, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/iflytek/greenplug/common/utils/AttributeCache$Package;

    .line 100
    .local v5, "pkg":Lcom/iflytek/greenplug/common/utils/AttributeCache$Package;
    const/4 v4, 0x0

    .line 101
    .local v4, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<[ILcom/iflytek/greenplug/common/utils/AttributeCache$Entry;>;"
    const/4 v2, 0x0

    .line 102
    .local v2, "ent":Lcom/iflytek/greenplug/common/utils/AttributeCache$Entry;
    if-eqz v5, :cond_0

    .line 103
    invoke-static {v5}, Lcom/iflytek/greenplug/common/utils/AttributeCache$Package;->access$000(Lcom/iflytek/greenplug/common/utils/AttributeCache$Package;)Landroid/util/SparseArray;

    move-result-object v7

    invoke-virtual {v7, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<[ILcom/iflytek/greenplug/common/utils/AttributeCache$Entry;>;"
    check-cast v4, Ljava/util/HashMap;

    .line 104
    .restart local v4    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<[ILcom/iflytek/greenplug/common/utils/AttributeCache$Entry;>;"
    if-eqz v4, :cond_2

    .line 105
    invoke-virtual {v4, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "ent":Lcom/iflytek/greenplug/common/utils/AttributeCache$Entry;
    check-cast v2, Lcom/iflytek/greenplug/common/utils/AttributeCache$Entry;

    .line 106
    .restart local v2    # "ent":Lcom/iflytek/greenplug/common/utils/AttributeCache$Entry;
    if-eqz v2, :cond_2

    .line 107
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v6, v2

    .line 137
    :goto_0
    return-object v6

    .line 113
    :cond_0
    :try_start_1
    iget-object v7, p0, Lcom/iflytek/greenplug/common/utils/AttributeCache;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    invoke-virtual {v7, p1, v8}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 114
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_1

    .line 115
    :try_start_2
    monitor-exit p0

    goto :goto_0

    .line 138
    .end local v0    # "context":Landroid/content/Context;
    .end local v2    # "ent":Lcom/iflytek/greenplug/common/utils/AttributeCache$Entry;
    .end local v4    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<[ILcom/iflytek/greenplug/common/utils/AttributeCache$Entry;>;"
    .end local v5    # "pkg":Lcom/iflytek/greenplug/common/utils/AttributeCache$Package;
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 117
    .restart local v2    # "ent":Lcom/iflytek/greenplug/common/utils/AttributeCache$Entry;
    .restart local v4    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<[ILcom/iflytek/greenplug/common/utils/AttributeCache$Entry;>;"
    .restart local v5    # "pkg":Lcom/iflytek/greenplug/common/utils/AttributeCache$Package;
    :catch_0
    move-exception v1

    .line 118
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_3
    monitor-exit p0

    goto :goto_0

    .line 120
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "context":Landroid/content/Context;
    :cond_1
    new-instance v5, Lcom/iflytek/greenplug/common/utils/AttributeCache$Package;

    .end local v5    # "pkg":Lcom/iflytek/greenplug/common/utils/AttributeCache$Package;
    invoke-direct {v5, v0}, Lcom/iflytek/greenplug/common/utils/AttributeCache$Package;-><init>(Landroid/content/Context;)V

    .line 121
    .restart local v5    # "pkg":Lcom/iflytek/greenplug/common/utils/AttributeCache$Package;
    iget-object v7, p0, Lcom/iflytek/greenplug/common/utils/AttributeCache;->mPackages:Ljava/util/WeakHashMap;

    invoke-virtual {v7, p1, v5}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v0    # "context":Landroid/content/Context;
    :cond_2
    move-object v3, v2

    .line 124
    .end local v2    # "ent":Lcom/iflytek/greenplug/common/utils/AttributeCache$Entry;
    .local v3, "ent":Lcom/iflytek/greenplug/common/utils/AttributeCache$Entry;
    if-nez v4, :cond_3

    .line 125
    new-instance v4, Ljava/util/HashMap;

    .end local v4    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<[ILcom/iflytek/greenplug/common/utils/AttributeCache$Entry;>;"
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 126
    .restart local v4    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<[ILcom/iflytek/greenplug/common/utils/AttributeCache$Entry;>;"
    invoke-static {v5}, Lcom/iflytek/greenplug/common/utils/AttributeCache$Package;->access$000(Lcom/iflytek/greenplug/common/utils/AttributeCache$Package;)Landroid/util/SparseArray;

    move-result-object v7

    invoke-virtual {v7, p2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 130
    :cond_3
    :try_start_4
    new-instance v2, Lcom/iflytek/greenplug/common/utils/AttributeCache$Entry;

    iget-object v7, v5, Lcom/iflytek/greenplug/common/utils/AttributeCache$Package;->context:Landroid/content/Context;

    iget-object v8, v5, Lcom/iflytek/greenplug/common/utils/AttributeCache$Package;->context:Landroid/content/Context;

    .line 131
    invoke-virtual {v8, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v8

    invoke-direct {v2, v7, v8}, Lcom/iflytek/greenplug/common/utils/AttributeCache$Entry;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 132
    .end local v3    # "ent":Lcom/iflytek/greenplug/common/utils/AttributeCache$Entry;
    .restart local v2    # "ent":Lcom/iflytek/greenplug/common/utils/AttributeCache$Entry;
    :try_start_5
    invoke-virtual {v4, p3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 137
    :try_start_6
    monitor-exit p0

    move-object v6, v2

    goto :goto_0

    .line 133
    .end local v2    # "ent":Lcom/iflytek/greenplug/common/utils/AttributeCache$Entry;
    .restart local v3    # "ent":Lcom/iflytek/greenplug/common/utils/AttributeCache$Entry;
    :catch_1
    move-exception v1

    move-object v2, v3

    .line 134
    .end local v3    # "ent":Lcom/iflytek/greenplug/common/utils/AttributeCache$Entry;
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    .restart local v2    # "ent":Lcom/iflytek/greenplug/common/utils/AttributeCache$Entry;
    :goto_1
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 133
    .end local v1    # "e":Landroid/content/res/Resources$NotFoundException;
    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method public removePackage(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 78
    monitor-enter p0

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/greenplug/common/utils/AttributeCache;->mPackages:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    monitor-exit p0

    .line 81
    return-void

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateConfiguration(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 84
    monitor-enter p0

    .line 85
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/greenplug/common/utils/AttributeCache;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v0

    .line 86
    .local v0, "changes":I
    const v1, -0x400000a1    # -1.9999808f

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    .line 92
    iget-object v1, p0, Lcom/iflytek/greenplug/common/utils/AttributeCache;->mPackages:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->clear()V

    .line 94
    :cond_0
    monitor-exit p0

    .line 95
    return-void

    .line 94
    .end local v0    # "changes":I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
