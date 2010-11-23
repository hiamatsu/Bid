package bid

class Bid_newsController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [bid_newsInstanceList: Bid_news.list(params), bid_newsInstanceTotal: Bid_news.count()]
    }

    def create = {
        def bid_newsInstance = new Bid_news()
        bid_newsInstance.properties = params
        return [bid_newsInstance: bid_newsInstance]
    }

    def save = {
        def bid_newsInstance = new Bid_news(params)
        if (bid_newsInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'bid_news.label', default: 'Bid_news'), bid_newsInstance.id])}"
            redirect(action: "show", id: bid_newsInstance.id)
        }
        else {
            render(view: "create", model: [bid_newsInstance: bid_newsInstance])
        }
    }

    def show = {
        def bid_newsInstance = Bid_news.get(params.id)
        if (!bid_newsInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'bid_news.label', default: 'Bid_news'), params.id])}"
            redirect(action: "list")
        }
        else {
            [bid_newsInstance: bid_newsInstance]
        }
    }

    def edit = {
        def bid_newsInstance = Bid_news.get(params.id)
        if (!bid_newsInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'bid_news.label', default: 'Bid_news'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [bid_newsInstance: bid_newsInstance]
        }
    }

    def update = {
        def bid_newsInstance = Bid_news.get(params.id)
        if (bid_newsInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (bid_newsInstance.version > version) {
                    
                    bid_newsInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'bid_news.label', default: 'Bid_news')] as Object[], "Another user has updated this Bid_news while you were editing")
                    render(view: "edit", model: [bid_newsInstance: bid_newsInstance])
                    return
                }
            }
            bid_newsInstance.properties = params
            if (!bid_newsInstance.hasErrors() && bid_newsInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'bid_news.label', default: 'Bid_news'), bid_newsInstance.id])}"
                redirect(action: "show", id: bid_newsInstance.id)
            }
            else {
                render(view: "edit", model: [bid_newsInstance: bid_newsInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'bid_news.label', default: 'Bid_news'), params.id])}"
            redirect(action: "list")
        }
    }

    def delete = {
        def bid_newsInstance = Bid_news.get(params.id)
        if (bid_newsInstance) {
            try {
                bid_newsInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'bid_news.label', default: 'Bid_news'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'bid_news.label', default: 'Bid_news'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'bid_news.label', default: 'Bid_news'), params.id])}"
            redirect(action: "list")
        }
    }
}
