.class public final Lcom/tencent/mobwin/core/view/b;
.super Ljava/lang/Object;


# instance fields
.field public a:Landroid/graphics/Bitmap;

.field public b:I

.field public c:Lcom/tencent/mobwin/core/view/b;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mobwin/core/view/b;->c:Lcom/tencent/mobwin/core/view/b;

    iput-object p1, p0, Lcom/tencent/mobwin/core/view/b;->a:Landroid/graphics/Bitmap;

    iput p2, p0, Lcom/tencent/mobwin/core/view/b;->b:I

    return-void
.end method
