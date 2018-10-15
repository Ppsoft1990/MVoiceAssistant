.class public abstract Lcom/iflytek/viafly/schedule/framework/data/AbstractDatabaseUpgradeHandler;
.super Ljava/lang/Object;
.source "AbstractDatabaseUpgradeHandler.java"


# instance fields
.field public mDatabaseUpgradeHandler:Lcom/iflytek/viafly/schedule/framework/data/AbstractDatabaseUpgradeHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected getDatabaseUpgradeHandler()Lcom/iflytek/viafly/schedule/framework/data/AbstractDatabaseUpgradeHandler;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/data/AbstractDatabaseUpgradeHandler;->mDatabaseUpgradeHandler:Lcom/iflytek/viafly/schedule/framework/data/AbstractDatabaseUpgradeHandler;

    return-object v0
.end method

.method public abstract onUpgrade(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public setSuccessor(Lcom/iflytek/viafly/schedule/framework/data/AbstractDatabaseUpgradeHandler;)V
    .locals 0
    .param p1, "databaseUpgradeHandler"    # Lcom/iflytek/viafly/schedule/framework/data/AbstractDatabaseUpgradeHandler;

    .prologue
    .line 14
    iput-object p1, p0, Lcom/iflytek/viafly/schedule/framework/data/AbstractDatabaseUpgradeHandler;->mDatabaseUpgradeHandler:Lcom/iflytek/viafly/schedule/framework/data/AbstractDatabaseUpgradeHandler;

    .line 15
    return-void
.end method
