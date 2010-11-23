package bid

class Auction_merchandiseController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [auction_merchandiseInstanceList: Auction_merchandise.list(params), auction_merchandiseInstanceTotal: Auction_merchandise.count()]
    }

    def create = {
        def auction_merchandiseInstance = new Auction_merchandise()
        auction_merchandiseInstance.properties = params
        return [auction_merchandiseInstance: auction_merchandiseInstance]
    }
	
    def save = {
        def auction_merchandiseInstance = new Auction_merchandise(params)
        if (auction_merchandiseInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'auction_merchandise.label', default: 'Auction_merchandise'), auction_merchandiseInstance.id])}"
            redirect(action: "show", id: auction_merchandiseInstance.id)
        }
        else {
            render(view: "create", model: [auction_merchandiseInstance: auction_merchandiseInstance])
        }
    }

    def show = {
        def auction_merchandiseInstance = Auction_merchandise.get(params.id)
        if (!auction_merchandiseInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'auction_merchandise.label', default: 'Auction_merchandise'), params.id])}"
            redirect(action: "list")
        }
        else {
            [auction_merchandiseInstance: auction_merchandiseInstance]
        }
    }

    def edit = {
        def auction_merchandiseInstance = Auction_merchandise.get(params.id)
        if (!auction_merchandiseInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'auction_merchandise.label', default: 'Auction_merchandise'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [auction_merchandiseInstance: auction_merchandiseInstance]
        }
    }

    def update = {
        def auction_merchandiseInstance = Auction_merchandise.get(params.id)
        if (auction_merchandiseInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (auction_merchandiseInstance.version > version) {
                    
                    auction_merchandiseInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'auction_merchandise.label', default: 'Auction_merchandise')] as Object[], "Another user has updated this Auction_merchandise while you were editing")
                    render(view: "edit", model: [auction_merchandiseInstance: auction_merchandiseInstance])
                    return
                }
            }
            auction_merchandiseInstance.properties = params
            if (!auction_merchandiseInstance.hasErrors() && auction_merchandiseInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'auction_merchandise.label', default: 'Auction_merchandise'), auction_merchandiseInstance.id])}"
                redirect(action: "show", id: auction_merchandiseInstance.id)
            }
            else {
                render(view: "edit", model: [auction_merchandiseInstance: auction_merchandiseInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'auction_merchandise.label', default: 'Auction_merchandise'), params.id])}"
            redirect(action: "list")
        }
    }

    def delete = {
        def auction_merchandiseInstance = Auction_merchandise.get(params.id)
        if (auction_merchandiseInstance) {
            try {
                auction_merchandiseInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'auction_merchandise.label', default: 'Auction_merchandise'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'auction_merchandise.label', default: 'Auction_merchandise'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'auction_merchandise.label', default: 'Auction_merchandise'), params.id])}"
            redirect(action: "list")
        }
    }
}
